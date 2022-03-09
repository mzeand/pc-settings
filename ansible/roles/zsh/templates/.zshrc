export PS1="%F{cyan}(*'-')%f< %~ $ "

export PATH=/usr/local/bin:$PATH

# anyenv
eval "$(anyenv init -)"

# direnv
export EDITOR=vim
eval "$(direnv hook zsh)"

# goenv
export GOENV_ROOT=$HOME/.anyenv/envs/goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"

# tfenv
export TFENV_ROOT=$HOME/.anyenv/envs/tfenv
export PATH=$TFENV_ROOT/bin:$PATH

# Docker
alias d='docker'
alias dcm='docker-compose'

# Git
alias gb='git branch'
alias gs='git status'

# tmux
alias t='tmux'

# terraform
alias trf='terraform'

# aws-valult
alias awsv='aws-vault'

# awscli
complete -C aws_completer aws

