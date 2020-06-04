source ~/env
source ~/aliases
source ~/paths
source ~/.zprofile

eval "$(direnv hook zsh)"
eval "$(nodenv init -)"
eval "$(opam env)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

# eval `ssh-agent`
# eval "$(starship init zsh)"
