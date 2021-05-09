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
source <(nodenv init -)
source <(pyenv init -)
eval "$(rbenv init -)"

# added by travis gem
[ ! -s /Users/nasa/.travis/travis.sh ] || source /Users/nasa/.travis/travis.sh
