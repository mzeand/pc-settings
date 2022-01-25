0. Install ansible
```
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible

```

1. Download pc-settings

```
git clone https://github.com/mzeand/pc-settings.git

```

2. Run the playbook

```
cd pc-settings/ansible
ansible-playbook -i inventory/localhost localhost.yml

```
