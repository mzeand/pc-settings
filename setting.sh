#!/bin/bash

ANSIBLE_PATH=~/workspace/settings/pc-settings

## command line tools
xcode-select --install

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## install ansible
brew install ansible

## clone repo
git clone -b template https://github.com/mzeand/pc-settings.git ${ANSIBLE_PATH}

## ansible
cd ${ANSIBLE_PATH}
ls -l 
#ansible-playbook -i inventory/localhost localhost.yml
