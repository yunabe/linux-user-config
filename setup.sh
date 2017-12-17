cd $HOME
ln -s config/_screenrc .screenrc
mkdir .zsh.d
ln -s config/_zshrc .zshrc
ln -s config/_emacs .emacs
ln -s config/_gitconfig .gitconfig
mkdir -p .emacs.d
ln -s ../config/Cask .emacs.d/Cask
