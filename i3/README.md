# Installation

It is recommended to install zsh first.

Install i3-gaps (not just i3)
Install i3status

Create symbolic links
~/dotfiles/i3status.conf -> ~/.i3status.conf
    ln -s ~/dotfiles/i3/i3status.conf ~/.i3status.conf
~/.i3/config -> config/ 
    ln -s ~/dotfiles/i3/ ~/.i3

# Dependencies

## Window transitions with compton

Install compton

Compton for window effects:
~/dotfiles/i3/compton.conf -> /etc/xdg/compton.conf
    sudo ln -s ~/dotfiles/i3/compton.conf /etc/xdg/compton.conf

## Application menu
Install dmenu
Install rofi

Change rofi theme with:
```
rofi-theme-selector
```

## Terminal
Install rxvt-unicode 

Follow the README in dotfiles/X11 for rxvt-unicode configuration

## Background image
Install feh

## Clipboard manager
Install greenclip
    https://github.com/erebe/greenclip
