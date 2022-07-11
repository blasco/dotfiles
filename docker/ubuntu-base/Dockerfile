#TODO: this seems to be working:
# https://github.com/fennerm/arch-i3-novnc-docker/blob/master/Dockerfile

#https://askubuntu.com/questions/969810/ubuntu-on-windows-10-docker-vs-wsl
# According to this article, it is not recommened to run a general purpose system on docker.
# Nevertheless there are some big advantages, like having a docker file that exactly describes how to setup the environment.

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive" 

# Upgrade and install essential packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \ 
        git \
        curl \
        wget \
        iproute2 \
        openssh-server \
        sudo \
        supervisor \
        software-properties-common

# Install python 3.8
# Do not install packages via pip, always create a venv first
RUN apt-get install -y python3.8 && \
    apt-get install -y python3.8-distutils && \
    apt-get install -y python3.8-venv

# Authorize SSH Host
RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && \
    ssh-keyscan github.com > /root/.ssh/known_hosts
COPY id_rsa /root/.ssh/id_rsa
COPY id_rsa.pub /root/.ssh/id_rsa.pub
RUN chmod 600 /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa.pub

# Config git
RUN git config --global user.email "blascoburguillos@gmail.com" && \
    git config --global user.name "blasco"

# Dotfiles
ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN git clone git@github.com:blasco/dotfiles.git ~/dotfiles

# Vim
RUN apt-get install -y vim vim-gtk3

# Nvim

# i3
RUN add-apt-repository ppa:regolith-linux/release && \
    apt-get update && \
    apt-get -y install i3-gaps i3status && \
    ln -s ~/dotfiles/i3/i3status.conf ~/.i3status.conf && \
    ln -s ~/dotfiles/i3/ ~/.i3 && \
    # Start i3 from docker with supervisord \
    ln -s ~/dotfiles/i3/supervisord.conf /etc/supervisord.conf

# feh for background image
RUN apt-get -y install feh

# Compton is used for transparency in i3
RUN apt-get -y install compton compton-conf && \
    ln -s ~/dotfiles/i3/compton.conf /etc/xdg/compton.conf

# rxvt terminal
RUN apt-get -y install rxvt-unicode && \
    ln -s ~/dotfiles/X11/Xresources ~/.Xresources

# ZSH
RUN apt-get install zsh -y && \
    ln -s ~/dotfiles/zsh/zshrc ~/.zshrc && \
    cd ~/dotfiles/zsh && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# FZF for Fuzzy command search
RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
    ~/.fzf/install

# Node Version Manager
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# TODO:
#https://github.com/ryanoasis/nerd-fonts/tree/2.1.0/patched-fonts/Inconsolata/complete
