% GIT_FLOW(1) git_flow user manual
% Pavel Petržela <pavel@petrzela.eu>
  Jiří Pavelka <j.pavelka@seznam.cz>
% April 2016

# NAME
git_flow

# SYNOPSIS
git_flow [-ih]

# DESCRIPTION
**git_flow**  implement **git flow model**(1) workflow and extend **existing git_flow command**(2):

* automatically increment version number (file VERSION)
* automatically fill version history (file CHANGELOG)
* support independet production branches
* even more simple usage

# OPTIONS
-i, --init
:   Initialize current folder to be compatible with git flow model

-h, --help
:   Show (this) usage.

# INTRODUCTION

**Git flow model** is based on two main branches, _master_ and _dev_:

dev
: * new features or fixes (bugfix)

master
: * main production branch
* also another independent production branches

Temporary branches:

hotfix-#.#.#
: * fixes on production branch
* for automatic creation run ``git_flow`` on production branch

feature
: * develop new feature
* name of brach should reflect functionality of the feature
* for creation run ``git checkout -b feature_name`` on branch _dev_

release-#.#
: * testing functionality before merge or move to production
* for automatic creation run ``git_flow``  on branch _dev_

# EXAMPLES

## Init new repository

#. ``cd project_folder``
#. ``git_flow --init``

## New feature

#. ``git checkout dev``
#. ``git checkout -b feature_name``
#. … some commits …
#. git_flow

## Hotfix

#. ``git checkout master``
#. ``git_flow``
#. … fixes followed by commits …
#. ``git_flow``

## New release

#. ``git checkout dev``
#. ``git_flow``

## Bugfix on release

#. ``git checkout release-#.#``
#. … fixes followed by commits …
#. ``git_flow `` (merge only to dv)

## Release to production

#. ``git checkout release-#.#``
#. ``git_flow``

# REFERENCES
[**git flow model**(1)](http://nvie.com/posts/a-successful-git-branching-model/)

[**git-flow cheatsheet**(2)](http://danielkummer.github.io/git-flow-cheatsheet/)
