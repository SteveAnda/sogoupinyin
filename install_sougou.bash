#!/bin/bash
echo "ready install sogoupinyin for ubuntu 16.04."
sudo sed -i '$a\deb http://archive.ubuntukylin.com:10006/ubuntukylin trusty main' /etc/apt/sources.list
sudo apt-get update
sudo apt-get install sogoupinyin 
echo "sogoupinyin has been installed in your computer"
echo "if you can't find it,you need to restart your computer"

#以下不知有没有用（第一次安装时用到了），可以先试下上面步骤（fcitx可以直接从图形化界面下载）
# before:
#①先添加以下源
sudo add-apt-repository ppa:fcitx-team/nightly
#②添加源之后需要更新一下系统
sudo apt-get update
#③开始安装fcitx
sudo apt-get install fcitx
#④接着安装fcitx的配置工具
sudo apt-get install fcitx-config-gtk
#⑤然后安装fcitx的table-all软件包
sudo apt-get install fcitx-table-all
#⑥安装im-switch切换工具（此步导致系统设置语言支持栏消失，可不执行）
sudo apt-get install im-switch
