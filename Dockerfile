ARG MINIFORGE_VERSION=26.1.1-2
ARG PICARD_ENV=/opt/conda/envs/picard

FROM condaforge/miniforge3:${MINIFORGE_VERSION} AS builder

# Install Picard into an isolated Conda environment instead of mutating base
ARG PICARD_VERSION=3.4.0
ARG PICARD_ENV
RUN mamba create -qy -p ${PICARD_ENV} \
    -c bioconda \
    -c conda-forge \
    picard-slim==${PICARD_VERSION} && \
    mamba clean -afy

# Deploy the target tools into a base image
FROM ubuntu:24.04
ARG PICARD_ENV
COPY --from=builder ${PICARD_ENV} ${PICARD_ENV}
ENV PATH="${PICARD_ENV}/bin:${PATH}"
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# Add a new user/group called bldocker
RUN groupadd -g 500001 bldocker && \
    useradd -r -u 500001 -g bldocker bldocker

# Change the default user to bldocker from root
USER bldocker

LABEL maintainer="Rupert Hugh-White <rhughwhite@sbpdiscovery.org>" \
      org.opencontainers.image.source=https://github.com/TheBoutrosLab/docker-Picard
