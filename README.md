# PC Settings

## Environment

- My PC
  - MacBook Air (M1, 2020)
  - macOS Monterey

## Install

0. Install ansible
```
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible

```

1. Download pc-settings and change current path

```
git clone https://github.com/mzeand/pc-settings.git
cd pc-settings/ansible

```

2. Create ansible vault file

```
$ ansible-vault create group_vars/all.yml
New Vault password: 
Confirm New Vault password:

```

```group_vars/all.yml

ansible_become_password: xxxxxxxxx

```

3. Run the playbook

```
ansible-playbook -i inventory/localhost localhost.yml --ask-vault-pass

```
