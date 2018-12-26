export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$HOME/.composer/vendor/bin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=./bin:$PATH
export PATH=$PATH:path/to/installed/dart/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$HOME/flutter/bin:$PATH
export PATH="$PATH":"~/.pub-cache/bin"
export XDG_CONFIG_HOME=~/.config
export PATH="$PATH:/Users/asan/.cargo/bin"
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin
export GO15VENDOREXPERIMENT=1

# one darkのために追加
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

eval "$(direnv hook zsh)"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
eval `ssh-agent`

# source ~/.cargo/env

#エイリアス用の関数定義
function mkcd() {
    mkdir $1;
    cd $1;
}

function push(){
  echo  "Please enter the commit message for your changes."
  read msg
  git add .
  git commit -m "$msg"
  git push
}

function deploy(){
  echo  "Please enter the commit message for your changes."
  read msg
  git add .
  git commit -m "$msg"
  git push heroku master
}


#エイリアスの設定
alias vim='nvim'
alias vi="nvim"
alias emacs='nvim'

alias -s rb='ruby'
alias -s py='python'

alias vimc='vim ~/.config/nvim/init.vim'
alias vimp='vim ~/.config/nvim/dein.toml'

alias mkcd=mkcd #mkdirとcdを一括で行う
alias push=push
alias deploy=deploy

alias l='ls'
alias la='ls -all'

#git関係のエイリアス
alias g='git'
alias gl='git log --oneline -10'
alias gs='git status'
alias ga='git add'
alias gch='git checkout'
alias gc='git commit'
alias gb='git branch'
alias gcp='git cherry-pick'

eval "$(rbenv init -)"
