#!/bin/bash

#setup git config
git config --global user.name "fliiiix"
git config --global user.email "de-ch@hotmail.de"

##push default config
git config --global push.default simple

#copy themes 
if [ ! -d ~/.themes ]
   then
     mkdir .themes
fi

cp -rf ./.themes ~/.themes

#setup screenshots
sudo yum install -y scrot curl

sudo sh -c "curl https://gist.githubusercontent.com/fliiiix/8010581/raw/e51d63682138df57756eec78c074e1a70603f01a/screenshot > /usr/local/bin/screenshot"

sudo chmod +x /usr/local/bin/screenshot

#setup keepass don't forget to install the chrome or firefox plugin
sudo yum install -y keepass

if [ ! -d /usr/lib/keepass/plugins ]
   then
      sudo mkdir /usr/lib/keepass/plugins
fi

sudo git clone -n https://github.com/pfn/keepasshttp.git --depth 1 /usr/lib/keepass/plugins/keepasshttp

cd /usr/lib/keepass/plugins/keepasshttp
sudo git checkout HEAD KeePassHttp.plgx


#setup dropbox
sudo sh -c "curl https://gist.githubusercontent.com/fliiiix/a51e46864803809e4d81/raw/4f18cd0e2e5d87c99fee27124f8227f64b4de420/dropbox.repo > /etc/yum.repos.d/dropbox.repo"

sudo yum install -y nautilus-dropbox

echo "Your dropbox is ready for setup!"
