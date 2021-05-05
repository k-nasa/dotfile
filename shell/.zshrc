autoload -Uz compinit && compinit

setopt share_history
setopt no_beep
setopt auto_cd

source ~/zinit
source ~/env
source ~/aliases
source ~/paths
source ~/secret_env # NOTE このファイルはコミットしない

eval "$(direnv hook zsh)"
source <(nodenv init -)
source <(pyenv init -)
eval "$(rbenv init -)"

# added by travis gem
[ ! -s /Users/nasa/.travis/travis.sh ] || source /Users/nasa/.travis/travis.sh

# Wasmer
export WASMER_DIR="/Users/wantedly333/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"