#!/bin/bash

# 替换成清华源
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo rm /etc/apt/sources.list
sudo touch /etc/apt/sources.list
sudo echo "deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo "deb https://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo "deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo "deb https://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo "deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo "deb https://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo "deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo "deb https://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade

# 安装中文包
# sudo apt-get install language-pack-zh-hans
# sudo apt-get install fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming

# 安装常用工具
sudo apt-get install tlp
sudo apt-get install git
sudo apt-get install curl 
sudo apt-get install snap
sudo apt-get install ranger
sudo apt-get install vim
sudo apt-get install net-tools
sudo apt-get install xrdp
sudo apt-get install openssh-server

# 安装zsh & oh-my-zsh, 并设置为默认shell
apt install zsh -y
chsh -s /bin/zsh
#重启后生效
# reboot 

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# mv ~/.zshrc ~/.zshrc.bak
# touch ~/.zshrc
# echo "export ZSH=\"$HOME/.oh-my-zsh\"" >> ~/.zshrc

# 安装 agnosterzak 主题  主题：https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# cd ~/.oh-my-zsh/themes
# wget https://raw.githubusercontent.com/zakaziko99/agnosterzak-ohmyzsh-theme/master/agnosterzak.zsh-theme
# echo "ZSH_THEME=\"agnosterzak\"" >> ~/.zshrc

# powerlevel10k
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# echo "ZSH_THEME=\"powerlevel10k/powerlevel10k\"" >> ~/.zshrc

# 自动补齐插件
# cd ~/.oh-my-zsh/plugins/
# mkdir incr && cd incr
# wget http://mimosa-pudica.net/src/incr-0.2.zsh
# echo "source ~/.oh-my-zsh/plugins/incr/incr*.zsh" >> ~/.zshrc

# 解决与vim的冲突
# rm -rf ~/.zcompdump*
# exec zsh
# echo "plugins=(git extract z)" >> ~/.zshrc

# 语言高亮插件
sudo apt install zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# 默认提示
# git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
# echo "plugins=(git zsh-autosuggestions)" >> ~/.zshrc
# echo "source $ZSH/oh-my-zsh.sh" >> ~/.zshrc

source ~/.zshrc
