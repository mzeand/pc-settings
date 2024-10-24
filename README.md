# PC Settings

## Environment

- My PC
  - MacBook Air (M1, 2020)
  - macOS v14.7

## Install

0. Install ansible

```
brew install ansible

```

1. Download pc-settings and change current path

```
git clone https://github.com/mzeand/pc-settings.git
cd pc-settings/ansible

```

1. Run the playbook

```
ansible-playbook -i inventory/localhost localhost.yml

```
