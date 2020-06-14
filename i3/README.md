# Installation

Install rxvt-unicode 
Install compton
Install feh
Install rofi

Create symbolic links
~/dotfiles/i3status.conf -> ~/.i3status.conf
    ln -s ~/dotfiles/i3/i3status.conf ~/.i3status.conf
~/.i3/config -> config/ 
    ln -s ~/dotfiles/i3/

Compton for window effects:
~/dotfiles/i3/compton.conf -> /etc/xdg/compton.conf
    sudo ln -s ~/dotfiles/i3/compton.conf /etc/xdg/compton.conf

Status bar:
https://i3wm.org/i3status/manpage.html
