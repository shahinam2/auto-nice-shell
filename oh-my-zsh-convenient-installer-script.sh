#!/bin/bash

sudo apt update && sudo apt install git zsh -y

# ohmyzsh unattended installation:
# https://github.com/ohmyzsh/ohmyzsh#unattended-install
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh 
chmod +x install.sh
./install.sh --unattended

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# installing plugins:
mkdir -p ~/.oh-my-zsh/custom/plugins
tar -xzf plugins.tar.gz -C ~/.oh-my-zsh/custom/plugins

# copy the modified .p10k.zsh and .zshrc to home directory
mv ~/.zshrc ~/.zshrc.bak
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

# change the default shell to zsh
echo zsh >> ~/.bashrc

# reboot
sudo reboot

