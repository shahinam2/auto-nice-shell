#!/bin/bash

sudo apt update
mkdir custom-oh-my-zsh-install
cd custom-oh-my-zsh-install
sudo apt install -y git 
sudo apt install -y zsh curl

# ohmyzsh unattended installation:
# https://github.com/ohmyzsh/ohmyzsh#unattended-install
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh 
chmod +x install.sh
./install.sh --unattended

# installing plugins:
# zsh-syntax-highlighting:
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Zsh-z:
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
# zsh-autosuggestions:
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# copy the modified .p10k.zsh and .zshrc to home directory
git clone https://github.com/shahinam2/perfect-shell-convenient-script.git
cd perfect-shell-convenient-script
# rename the old .zshrc to .zshrc.bak
mv ~/.zshrc ~/.zshrc.bak
# copy the new .zshrc
cp .zshrc ~/.zshrc
# copy the new .p10k.zsh
cp .p10k.zsh ~/.p10k.zsh

# change the default shell to zsh
echo zsh >> ~/.bashrc

# reboot
sudo reboot


