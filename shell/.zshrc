autoload -Uz compinit && compinit

setopt share_history
setopt no_beep
setopt auto_cd

source ~/lazy_load
source ~/zinit
source ~/env
source ~/aliases
source ~/paths

eval "$(direnv hook zsh)"
