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
