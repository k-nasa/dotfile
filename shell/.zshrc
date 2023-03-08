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
eval "$(pyenv init --path)"
source <(nodenv init -)
eval "$(rbenv init -)"

# added by travis gem
[ ! -s /Users/nasa/.travis/travis.sh ] || source /Users/nasa/.travis/travis.sh

# Wasmer
export WASMER_DIR="/Users/asan/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

export PATH="${HOME}/.fluvio/bin:${PATH}"

# added by travis gem
[ ! -s /Users/asan/.travis/travis.sh ] || source /Users/asan/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/asan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/asan/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/asan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/asan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

