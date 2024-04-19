autoload -Uz compinit && compinit

setopt share_history
setopt no_beep
setopt auto_cd
setopt correct
setopt hist_reduce_blanks
setopt hist_ignore_all_dups

source ~/zinit
source ~/env
source ~/aliases
source ~/paths
source ~/secret_env # NOTE このファイルはコミットしない
source ~/prompt

export SAVEHIST=100000

eval "$(direnv hook zsh)"
eval "$(/opt/homebrew/bin/rbenv init - zsh)"
eval "$(~/.local/bin/mise activate zsh)"

# Wasmer
export WASMER_DIR="/Users/asan/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
