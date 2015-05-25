#!/bin/bash

#awwwwwwwwwwwwwwww stop using me
echo "aaaaaaaaaaaa please don't"
WORK_DIR=$(pwd)

#setup icons

sudo yum install librsvg2-tools

if [ ! -d ~/.icons ]
   then
     mkdir ~/.icons
fi

cd ~/.icons/

if [ ! -d ~/.icons/Clarity ]
    then
      git clone https://github.com/jcubic/Clarity.git
fi

cd ~/.icons/Clarity/
git pull
./configure
make

cd $WORK_DIR

#copy themes 
if [ ! -d ~/.themes ]
   then
     mkdir ~/.themes
fi

cp -rf ./.themes ~/.themes

#setup keepass don't forget to install the chrome or firefox plugin
sudo yum install -y keepass

if [ ! -d /usr/lib/keepass/plugins ]
   then
      sudo mkdir /usr/lib/keepass/plugins
fi

sudo git clone -n https://github.com/pfn/keepasshttp.git --depth 1 /usr/lib/keepass/plugins/keepasshttp

cd /usr/lib/keepass/plugins/keepasshttp
sudo git checkout HEAD KeePassHttp.plgx

#install steam from rpmfusion
sudo yum install -y steam

#install vlc from rpmfusion
sudo yum install -y vlc

#install modules for logitech g510
sudo curl -o /etc/yum.repos.d/gnome15.repo http://packages.russo79.com/fedora/20/gnome15/gnome15.repo
sudo yum install gnome15-suite-other 
