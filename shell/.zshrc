source ~/zinit
source ~/env
source ~/aliases
source ~/paths

eval "$(direnv hook zsh)"

nodenv() {
  unfunction "$0"
  source <(nodenv init -)

  $0 "$@"
}

opam() {
  unfunction "$0"
  source <(opam init -)

  $0 "$@"
}

pyenv() {
  unfunction "$0"
  source <(pyenv init -)

  $0 "$@"
}

rbenv() {
  unfunction "$0"
  source <(rbenv init -)

  $0 "$@"
}

nvim() {
  unfunction "$0"
  source <(nodenv init -)
  source <(pyenv init -)
  source <(rbenv init -)

  $0 "$@"
}
