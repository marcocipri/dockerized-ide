#FROM alpine
FROM ubuntu:latest

ARG USERNAME 
LABEL ubuntu docker ide 
COPY install.sh  /tmp/install.sh 
COPY dotfiles  /tmp/dotfiles 
COPY goIdeBin  /tmp/goIdeBin 
# todo : USERNAME parametric

RUN echo "usename $USERNAME" && apt-get -y upgrade && apt update && apt-get install -y software-properties-common && apt update &&\
   add-apt-repository -y ppa:jonathonf/vim && \
   add-apt-repository  -y ppa:neovim-ppa/stable && \
   apt-get -y update && \
   apt-get -y install vim && \
   apt-get  -y install neovim && \
   apt install -y zsh && \
   apt-get install -y sudo linuxbrew-wrapper npm fonts-powerline  curl wget git locales && \
   locale-gen en_US.UTF-8 && \
   curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add - && \
   echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list && \
   apt-get install -y nodejs && \
   apt-get update &&  apt-get install yarn && \
   wget https://dl.google.com/go/go1.12.9.linux-amd64.tar.gz && \
   tar -xvf go1.12.9.linux-amd64.tar.gz && \
   mv go /usr/local && \
   chmod -R 777  /tmp/goIdeBin && \ 
   chmod -R 777  /tmp/dotfiles  && \ 
   useradd -rm -d /home/$USERNAME -s /bin/sh -g root -G sudo -u 1000 $USERNAME && \
   su - $USERNAME -c "bash /tmp/install.sh $USERNAME" 
    

USER $USERNAME
WORKDIR /home/$USERNAME

