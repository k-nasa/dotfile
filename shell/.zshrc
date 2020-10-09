source ~/zinit
source ~/env
source ~/aliases
source ~/paths

eval "$(direnv hook zsh)"
eval "$(nodenv init -)"
eval "$(opam env)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
