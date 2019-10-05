# Installation
Create symbolic link
~/.vim -> vim
    ln -s ~/dotfiles/vim ~/.vim

Create bundle folder and install bundle:
    git clone https://github.com/VundleVim/Vundle.vim

Create necessary folders
    mkdir .backup .undo .swap

To fix the white borders in gtk-3.0
~/.config/gtk-3.0/gtk.css -> gtk.css
    ln -s ~/dotfiles/vim/gtk.css ~/.config/gtk-3.0/
