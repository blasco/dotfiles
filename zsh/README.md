# Setup

ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

# Dependencies

## Install Inconsolata Nerdfont
https://github.com/ryanoasis/nerd-fonts/tree/2.1.0/patched-fonts/Inconsolata/complete

## Install Oh-my-zsh
https://ohmyz.sh/
It needs to be installed in the dotfiles/zsh folder. Run  the following command from the dotfiles/zsh folder
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

There is a variable in .zshrc pointing to this folder that needs to be updated.

## Install node version manager (nvm) 
https://github.com/nvm-sh/nvm

## Install fzf for fuzzy command search with Ctrl+R
https://github.com/junegunn/fzf#installation

## Install pyenv
https://github.com/pyenv/pyenv
