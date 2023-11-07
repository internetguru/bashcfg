# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [0.12.0-rc.1] - 2023-11-07

### Changed

- Remove `graph` and `all` from the `gll` alias.

### Fixed

- Fix `gdi` to gd inclusive.

## [0.11.0] - 2023-09-11

_Stable release based on [0.11.0-rc.1]._

## [0.11.0-rc.1] - 2023-09-11

## [0.10.0] - 2023-09-11

_Stable release based on [0.10.0-rc.2]._

## [0.10.0-rc.2] - 2023-09-11

## [0.10.0-rc.1] - 2023-09-11

## [0.9.0] - 2022-11-02

## [0.8.0] - 2021-03-07
### Added
 - gsync to sync all

### Changed
 - improved gup

### Removed
 - gpull

## [0.7.0] - 2017-11-26
### Added
 - docker_up and docker_down functions

### Changed
 - CHANGELOG format change to .md
 - split ll to ll (long listing) and la (long listing all)

## 0.6.0 - 2016-04-20
### Added
 - podpora "svaté trojice" ./configure && make && make install

### Changed
 - oddělení git_flow do samostatného repozitáře https://bitbucket.org/igwr/gf
 - git_flow: změna způsobu zápisu do souboru CHANGELOG

## 0.5.0 - 2016-04-01
### Added
 - git_flow: přidána kontrola na exitenci gitu
 - git: přidána funkce/alias git_flow_init/gfi
 - git: přidána funkce git_repo_exist
 - git: přidána funkce git_branch_exist

## 0.4.0 - 2016-03-22
### Added
 - git_flow: přidáno +++ před/za commity v souboru CHANGELOG

## 0.3.0 - 2016-03-20
### Added
 - git: přidán alias gch: git checkout

## 0.2.0 - 2016-03-20
### Added
 - git: přidána funkce/alias git_delete_tag/gdt
 - git: přidán alias gb: git checkout -b

## 0.1.0 - 2016-03-14
### Added
 - git: gl zobrazuje aktuální větev, přidány aliasy gla a gll
 - .bashrc: funkce confirm - přidána podpora zsh
 - .bashrc: přidána podmínka pro nastavení které není nutné pro zsh

### Changed
 - git: refaktor gm a gvi na git_flow
 - .bashrc: rozdělení do samostatných souborů

[0.12.0-rc.1]: https://github.com/InternetGuru/bashcfg/releases/tag/v0.11.0
[0.11.0]: https://https://github.com/internetguru/bashcfg/compare/v0.10.0...v0.11.0
[0.11.0-rc.1]: https://github.com/internetguru/bashcfg/releases/tag/v0.10.0
[0.10.0]: https://https://github.com/internetguru/bashcfg/compare/v0.9.0...v0.10.0
[0.10.0-rc.2]: https://github.com/internetguru/bashcfg/releases/tag/v0.9.0
[0.10.0-rc.1]: https://github.com/internetguru/bashcfg/releases/tag/v0.9.0
[0.9.0]: https://github.com/internetguru/bashcfg/compare/v0.8.0...v0.9.0
[0.8.0]: https://github.com/InternetGuru/bashcfg/compare/v0.7.0...v0.8.0
[0.7.0]: https://bitbucket.org/igwr/bashcfg/compare/v0.7.0..0.6.0
