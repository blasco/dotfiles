#TODO: this seems to be working:
https://github.com/fennerm/arch-i3-novnc-docker/blob/master/Dockerfile

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

# # Install python 3.8
# # Do not install packages via pip, always create a venv first
# RUN apt-get install -y python3.8 && \
#     apt-get install -y python3.8-distutils && \
#     apt-get install -y python3.8-venv && \

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
RUN git clone git@github.com:blasco/dotfiles.git ~/dotfiles

# i3
RUN sudo add-apt-repository ppa:regolith-linux/release && \
    sudo apt-get update && \
    sudo apt-get -y install i3-gaps && \
    ln -s ~/dotfiles/i3/supervisord.conf /etc/supervisord.conf

# Vim
RUN apt-get install -y vim && \
    apt-get install -y vim-gtk3

# Nvim
