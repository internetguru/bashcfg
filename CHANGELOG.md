# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## Unreleased
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
