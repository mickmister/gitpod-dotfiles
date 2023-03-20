#!/bin/bash

cd /workspace
git clone https://github.com/mickmister/gitpod-dotfiles.git

brew install gh

globalGitIgnore="/workspace/.global_gitignore"
touch $globalGitIgnore
echo "_debug" >> $globalGitIgnore
git config --global core.excludesfile $globalGitIgnore
