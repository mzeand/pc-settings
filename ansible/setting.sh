#!/bin/bash

WORKSPACE_PATH=~/workspace/pc-settings/ansible

## command line tools
xcode-select --install

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## install ansible
brew install ansible

## clone repo
git clone https://github.com/mzeand/pc-settings.git ${WORKSPACE_PATH}

## ansible
cd ${WORKSPACE_PATH}/ansible
ls -l 
ansible-playbook -i inventory/localhost localhost.yml
