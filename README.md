## Why did I write this script?

As I study different DevOps technologies, I frequently need to start different VMs and almost all of them come with bash shell by default. although bash is the gold standard but it’s not as convenient as oh my zsh. so as I always want to switch to oh my zsh the process of installing and configuring zsh + oh my zsh + powerlevel10k was taking a long time. so I thought why don’t I automate this process. so here is the result.

## This script installs the following:
- zsh shell
- oh my zsh framework
- powerlevel10k (which is an external oh my zsh theme)

## Currently the following oh my zsh plugins will be installed:
- git 
- docker
- kubernetes
- [Zsh-z](https://github.com/agkozak/zsh-z#installation) (is a command line tool that allows you to jump quickly to directories that you have visited frequently in the past, or recently -- but most often a combination of the two)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) (This package provides syntax highlighting for the shell zsh. It enables highlighting of commands whilst they are typed at a zsh prompt into an interactive terminal. This helps in reviewing commands before running them, particularly in catching syntax errors.)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (It suggests commands as you type based on history and completions.)

## Tested on:
- Ubuntu 21.10
- Ubuntu 22.04 LTS

## To install this script, copy and paste the following script to your terminal:
```shell
sudo apt update && sudo apt install git -y \
&& git clone https://github.com/shahinam2/perfect-shell-convenient-script.git \
&& cd perfect-shell-convenient-script \
&& chmod +x oh-my-zsh-convenient-installer-script.sh \
&& ./oh-my-zsh-convenient-installer-script.sh
```

## The final result:
![2022-05-10_15h55_08](https://user-images.githubusercontent.com/32401073/167645675-7b4ee87e-c872-4e19-aa5e-178f8999c8f6.png)

![2022-05-10_15h55_38](https://user-images.githubusercontent.com/32401073/167645694-2ac8af96-8892-4715-921f-3780c6d912b5.png)
