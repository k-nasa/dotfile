export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=$HOME/.composer/vendor/bin:$PATH
export GOPATH=$HOME/.go
export PGDATA=/usr/local/var/postgres
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=./bin:$PATH
eval "$(direnv hook zsh)"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
eval `ssh-agent`

# Source Prezto.
eval "$(rbenv init -)"
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
export XDG_CONFIG_HOME=~/.config

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
alias -s rb='ruby'
alias -s py='python'
alias vimc='vim ~/.config/nvim/init.vim'
alias vimp='vim ~/.config/nvim/dein.toml'
alias mkcd=mkcd #mkdirとcdを一括で行う
alias push=push
alias deploy=deploy

alias l='ls'
alias la='ls -all'


# ghc
alias ghci='stack ghci'
alias ghc='stack ghc --'
alias runghc='stack runghc --'

# #git関係のエイリアス
# alias g='git'
# alias gl='git log --oneline -10'
# alias gs='git status'
# alias ga='git add'
# alias gch='git checkout'
# alias gc='git commit'
# alias gb='git branch'
# alias gcp='git cherry-pick'

# 以下zplug---------------------------------------------
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

# enhancd config
export ENHANCD_COMMAND=ed
export ENHANCD_FILTER=ENHANCD_FILTER=fzy:fzf:peco

# Vanilla shell
zplug "yous/vanilli.sh"

# Additional completion definitions for Zsh
zplug "zsh-users/zsh-completions"

# Load the theme.
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# Syntax highlighting bundle. zsh-syntax-highlighting must be loaded after
# excuting compinit command and sourcing other plugins.
zplug "zsh-users/zsh-syntax-highlighting", nice:9

# ZSH port of Fish shell's history search feature
zplug "zsh-users/zsh-history-substring-search", nice:10

# Tracks your most used directories, based on 'frecency'.
zplug "rupa/z", use:"*.sh"

# A next-generation cd command with an interactive filter
zplug "b4b4r07/enhancd", use:init.sh

# This plugin adds many useful aliases and functions.
zplug "plugins/git",   from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# Lime theme settings
export LIME_DIR_DISPLAY_COMPONENTS=2

# Better history searching with arrow keys
if zplug check "zsh-users/zsh-history-substring-search"; then
    bindkey "$terminfo[kcuu1]" history-substring-search-up
    bindkey "$terminfo[kcud1]" history-substring-search-down
fi

# Add color to ls command
export CLICOLOR=1

# NeoVim config
#export XDG_CONFIG_HOME=$HOME/.xdgconfig

# Load rbenv
if [ -e "$HOME/.rbenv" ]; then
  eval "$(rbenv init - zsh)"
fi

# Set GOPATH for Go
if command -v go &> /dev/null; then
  [ -d "$HOME/go" ] || mkdir "$HOME/go"
  export GOPATH="$HOME/go"
  export GOROOT=/usr/local/opt/go/libexec
  export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"
fi

# Set PATH for GAE
export PATH=$HOME/go/appengine:$PATH
