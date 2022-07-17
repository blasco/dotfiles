# Upgrade and install essential packages
apt-get update
apt-get upgrade -y
apt-get install -y \ 
    git \
    curl \
    wget \
    iproute2 \
    openssh-server \
    sudo \
    # supervisor \
    software-properties-common

# Install python 3.8
# Do not install packages via pip, always create a venv first
apt-get install -y python3.8
apt-get install -y python3.8-distutils
apt-get install -y python3.8-venv

# Config git
git config --global user.email "blascoburguillos@gmail.com"
git config --global user.name "blasco"

# Dotfiles
# ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
git clone git@github.com:blasco/dotfiles.git ~/dotfiles
cd ~/dotfiles
git submodule update --init --recursive

# apt-get install -y snapd squashfuse fuse
# systemctl enable snapd

# Vim
apt-get install -y vim vim-gtk3
rm -rf ~/.vim
ln -s ~/dotfiles/vim ~/.vim
# Install vim plugins \
vim +PlugInstall +qall
touch ~/dotfiles/vim/.vim_initialized

# # Nvim
# # TODO
#  mkdir ~/.config && \
#     ln -s ~/dotfiles/vim  ~/.config/nvim && \
#     # Fix white borders in gtk-3.0 \
#     # ln -s ~/dotfiles/vim/gtk.css ~/.config/gtk-3.0/ && \
#     # Add an entry on dmenu for neovim \
#     ln -s ~/dotfiles/vim/nvim.desktop /usr/share/applications/

# i3
add-apt-repository ppa:regolith-linux/release
apt-get update
apt-get install -y i3-gaps i3status
rm ~/.i3status.conf
ln -s ~/dotfiles/i3/i3status.conf ~/.i3status.conf
rm ~/.i3
ln -s ~/dotfiles/i3/ ~/.i3

# Cipboard manager
cd /usr/bin
wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip
chmod a+x greenclip

# feh for background image
apt-get install -y feh

# Compton is used for transparency in i3
apt-get install -y compton compton-conf
rm /etc/xdg/compton.conf
ln -s ~/dotfiles/i3/compton.conf /etc/xdg/compton.conf

# RXVT terminal
apt-get install -y rxvt-unicode-256color x11-xserver-utils 
rm ~/.Xresources
ln -s ~/dotfiles/X11/Xresources ~/.Xresources
git clone https://github.com/simmel/urxvt-resize-font ~/urxvt-resize-font
mkdir -p ~/.urxvt/ext
cp ~/urxvt-resize-font/resize-font ~/.urxvt/ext/
rm -rf ~/urxvt-resize-font

# ZSH shell
apt-get install -y zsh
cd ~/dotfiles/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
rm -f ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
# Oh-my-zsh plugins
git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.oh-my-zsh/custom/plugins/zsh-better-npm-completion

# Inconsolata Nerd Font, used by Xresources and vim config files
cp -r ~/dotfiles/fonts/inconsolata /usr/local/share/fonts/
 
# Autojump
apt-get install -y autojump

# FZF for fuzzy command search
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Node Version Manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.zshrc && nvm install 16.16.0
nvm alias default node

# Google Chrome
# https://askubuntu.com/questions/510056/how-to-install-google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update -t
sudo apt-get install -y google-chrome-stable
