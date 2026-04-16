# Changelog

All notable changes to this project will be documented in this file.


The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Changed
- Update Ubuntu base image from 20.04 to 24.04
- Switch the builder image from Mambaforge to Miniforge3 and update it from 23.3.1-1 to 26.1.1-2
- Install Picard into an isolated Conda environment in the runtime image
- Configure the runtime locale for the packaged Picard launcher
- Update maintainer metadata and image source labels

## [3.4.0] - 2025-04-14
### Added
 - Update Picard 3.4.0


## [3.3.0] - 2024-10-09
### Added
 - Update Picard 3.3.0

## [3.2.0] - 2024-06-28
### Added
 - Update Picard 3.2.0

## [3.1.1] - 2023-11-15
### Added
 - Update Picard 3.1.1

## [3.1.0] - 2023-09-19
### Added
 - Update Picard 3.1.0

### Changed
 - Use miniforge instead of bl-base

## [3.0.0] - 2023-03-03
### Added
- Update Picard 3.0.0
- Added autobuild workflow action

## [2.27.4] - 2022-08-03
### Added
- Update Picard to 2.27.4

## [2.26.10] - 2022-01-05
### Added
- Update Picard to 2.26.10 to address Log4j moderate vulnerability [GHSA-8489-44mv-ggj8](https://github.com/advisories/GHSA-8489-44mv-ggj8).

## [2.26.8] - 2021-12-16
### Added
- Update Picard to 2.26.8 to address Log4j critical vulnerability [GHSA-jfh8-c2jp-5v3q](https://github.com/advisories/GHSA-jfh8-c2jp-5v3q).

## [2.26.3] - 2021-10-19
### Added
- Update Picard from 2.25.5 to 2.26.3
- Update bl-base version from 1.0.0 to 1.1.0
- Use mamba instead of conda

## [2.25.5] - 2021-05-24
### Added
- Update Picard from 2.23.3 to 2.25.5
- Switch to bioconda installation instead of using wget for Picard



## [2.23.3] - 2021-04-27
### Added
- Initial Release
