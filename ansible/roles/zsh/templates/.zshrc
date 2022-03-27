export PS1="%F{cyan}(*'-')%f< %~ $ "

export PATH=/usr/local/bin:$PATH

# coreutils
# eval "$(gdircolors)"
# alias ls='gls --color=auto'

# zsh
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt print_eight_bit

alias l='ls -G'
alias ll='ls -lG'
alias rm='rm -i'

# vim
alias v='vim'

# anyenv
eval "$(anyenv init -)"

# direnv
export EDITOR=vim
eval "$(direnv hook zsh)"

# tfenv
export TFENV_ROOT=$HOME/.anyenv/envs/tfenv
export PATH=$TFENV_ROOT/bin:$PATH

# Docker
alias d='docker'
alias dcm='docker-compose'

# Git
alias gb='git branch'
alias gs='git status'
alias gl='git log --graph'

# tmux
alias t='tmux'

# terraform
alias trf='terraform'

# aws-valult
alias awsv='aws-vault'
alias awsve='aws-vault exec'

# awscli
# complete -C aws_completer aws

# gun-sed
alias sed='gsed'

# peco
function peco-select-history() {
  BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

function peco-get-destination-from-cdr() {
  cdr -l | \
  sed -e 's/^[[:digit:]]*[[:blank:]]*//' | \
  peco --query "$LBUFFER"
}

function peco-cdr() {
  local destination="$(peco-get-destination-from-cdr)"
  if [ -n "$destination" ]; then
    BUFFER="cd $destination"
    zle accept-line
  else
    zle reset-prompt
  fi
}
zle -N peco-cdr
bindkey '^u' peco-cdr

function find_cd() {
    cd "$(find . -type d | peco)"
}
alias fc="find_cd"
alias -g lb='`git branch | peco --prompt "GIT BRANCH>" | head -n 1 | sed -e "s/^\*\s*//g"`'
alias de='docker exec -it $(docker ps | peco | cut -d " " -f 1) /bin/bash'


