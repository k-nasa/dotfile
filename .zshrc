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

# apt-getするため
. /sw/bin/init.sh

# one darkのために追加
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PATH="/usr/local/opt/openssl/bin:$PATH"
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
eval "$(rbenv init -)"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

source ~/.aliases
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
