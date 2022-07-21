#!/usr/bin/env bash

pkg upgrade

# install programs
pkg install openssh
pkg install mosh
pkg install neovim

# set up python
pkg install python
pip install --upgrade pip
pip install pipx
pipx install ipython
