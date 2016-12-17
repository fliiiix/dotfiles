#!/bin/bash

#awwwwwwwwwwwwwwww stop using me
echo "aaaaaaaaaaaa please don't"
exit 1

#setup keepass don't forget to install the chrome or firefox plugin
sudo yum install -y keepass

if [ ! -d /usr/lib/keepass/plugins ]
   then
      sudo mkdir /usr/lib/keepass/plugins
fi

sudo git clone -n https://github.com/pfn/keepasshttp.git --depth 1 /usr/lib/keepass/plugins/keepasshttp

cd /usr/lib/keepass/plugins/keepasshttp
sudo git checkout HEAD KeePassHttp.plgx
