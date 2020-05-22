source ~/.zprofile
source ~/aliases
source ~/paths
source ~/env

# eval "$(starship init zsh)"

eval "$(direnv hook zsh)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
# eval `ssh-agent`
#
eval "$(opam env)"
