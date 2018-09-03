export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=$HOME/.composer/vendor/bin:$PATH
export GOPATH=$HOME/.go
export PGDATA=/usr/local/var/postgres
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=./bin:$PATH
export PATH=$PATH:path/to/installed/dart/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$HOME/flutter/bin:$PATH
export PATH="$PATH":"~/.pub-cache/bin"
export XDG_CONFIG_HOME=~/.config
export PATH="$PATH:/Users/asan/.cargo/bin"
export PATH=$GOPATH/bin:$PATH

eval "$(direnv hook zsh)"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
eval `ssh-agent`

source ~/.cargo/env

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

#git関係のエイリアス
alias g='git'
alias gl='git log --oneline -10'
alias gs='git status'
alias ga='git add'
alias gch='git checkout'
alias gc='git commit'
alias gb='git branch'
alias gcp='git cherry-pick'

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
# compinit 以降に読み込むようにロードの優先度を変更する
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# 入力補完
zplug "zsh-users/zsh-autosuggestions", defer:2

# Load the theme.
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme


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

# Set PATH for GAE
export PATH=$HOME/go/appengine:$PATH
export PATH=/Users/asan/go/appengine:/Users/asan/.zplug/repos/zplug/zplug/bin:/bin:/Users/asan/flutter/bin:./bin:/Users/asan/.nodebrew/current/bin:/Users/asan/.composer/vendor/bin:/Users/asan/.rbenv/shims:/Users/asan/.rbenv/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Wireshark.app/Contents/MacOS:path/to/installed/dart/bin:/Users/asan/.local/bin:~/.pub-cache/bin
export PATH=${HOME}/.cargo/bin:${PATH}
if [ -d "$HOME/.goenv" ]; then
  export GOENV_ROOT="$HOME/.goenv"
  export PATH="$GOENV_ROOT/bin:$PATH"
  which goenv > /dev/null && eval "$(goenv init -)"
fi
