git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

brew install neovim/neovim/neovim
sudo pip3 install neovim

ln -sf ~/dotfile/nvim ~/.config/nvim
ln -sf ~/dotfile/.zprezto ~/

