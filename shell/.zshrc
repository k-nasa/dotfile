setopt share_history
setopt no_beep
setopt auto_cd

source ~/zinit
source ~/env
source ~/aliases
source ~/paths
source ~/lazy_load

eval "$(direnv hook zsh)"
