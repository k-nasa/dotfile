source ~/.zprofile
source ~/aliases
source ~/paths

eval "$(direnv hook zsh)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval `ssh-agent`
