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
sudo apt-get install language-pack-zh-hans
sudo apt-get install fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming

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