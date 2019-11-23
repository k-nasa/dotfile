# PATH軍団
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH":"$HOME/flutter/.pub-cache/bin"
export PATH="$PATH":"$HOME/flutter/cache/dart-sdk/bin"
export PATH="$PATH":"~/.pub-cache/bin"
export PATH="$PATH:/Users/asan/.cargo/bin"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/flutter/bin:$PATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:path/to/installed/dart/bin
export PATH=./bin:$PATH
export PATH="/usr/local/Cellar/git/2.22.0_1/bin:$PATH"
export PATH=~/.local/bin:$PATH
# export PATH=/usr/local/bin/code

# mysql5.7を使うため
# export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
# export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"

# 覚えてない
export XDG_CONFIG_HOME=~/.config
# Lime theme settings
export LIME_DIR_DISPLAY_COMPONENTS=2
# Add color to ls command
export CLICOLOR=1


# Golang関連
export GOPATH="$HOME/go"
export GO15VENDOREXPERIMENT=1
# export GO111MODULE=on

# one darkのために追加
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

eval "$(anyenv init -)"
eval "$(direnv hook zsh)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
# eval "$(starship init zsh)"
eval `ssh-agent`

# source ~/.cargo/env

source ~/.aliases
