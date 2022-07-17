# Docker seems to add unfortunatelly too much overhead to run a web browser. In wls the web broswer runs smoothly
# This are all the commands that I use to set up a new system, running this script will probably fail. It is simpler
# to copy and paste line by line.

# Upgrade and install essential packages
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install \
    git \
    curl \
    wget \
    iproute2 \
    openssh-server \
    sudo \
    software-properties-common

# Install python 3.8
# Do not install packages via pip, always create a venv first
sudo apt-get install -y python3.8
sudo apt-get install -y python3.8-distutils
sudo apt-get install -y python3.8-venv

# apt-get install -y snapd squashfuse fuse
# systemctl enable snapd

# Vim
sudo apt-get install -y vim vim-gtk3
rm -rf ~/.vim
ln -s ~/dotfiles/vim ~/.vim
# Install vim plugins \
vim +PlugInstall +qall
touch ~/dotfiles/vim/.vim_initialized

# Neovim
mkdir -p ~/programs/neovim
cd ~/programs/neovim
# https://github.com/neovim/neovim/releases
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

# i3
sudo add-apt-repository ppa:regolith-linux/release
sudo apt-get update
sudo apt-get install -y i3-gaps i3status
rm ~/.i3status.conf
ln -s ~/dotfiles/i3/i3status.conf ~/.i3status.conf
rm ~/.i3
ln -s ~/dotfiles/i3/ ~/.i3

# Cipboard manager
cd /usr/bin
sudo wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip
sudo chmod a+x greenclip

# feh for background image
sudo apt-get install -y feh

# Compton is used for transparency in i3
sudo apt-get install -y compton compton-conf
rm /etc/xdg/compton.conf
ln -s ~/dotfiles/i3/compton.conf /etc/xdg/compton.conf

# RXVT terminal
sudo apt-get install -y rxvt-unicode-256color x11-xserver-utils 
rm ~/.Xresources
ln -s ~/dotfiles/X11/Xresources ~/.Xresources
git clone https://github.com/simmel/urxvt-resize-font ~/urxvt-resize-font
mkdir -p ~/.urxvt/ext
cp ~/urxvt-resize-font/resize-font ~/.urxvt/ext/
rm -rf ~/urxvt-resize-font

# ZSH shell
sudo apt-get install -y zsh
cd ~/dotfiles/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
rm -f ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
# Oh-my-zsh plugins
git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.oh-my-zsh/custom/plugins/zsh-better-npm-completion

# Inconsolata Nerd Font, used by Xresources and vim config files
sudo cp -r ~/dotfiles/fonts/inconsolata /usr/local/share/fonts/
 
# Autojump
sudo apt-get install -y autojump

# FZF for fuzzy command search
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Node Version Manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.zshrc && nvm install 16.16.0
nvm alias default node

# Google Chrome
# https://askubuntu.com/questions/510056/how-to-install-google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install -y google-chrome-stable
