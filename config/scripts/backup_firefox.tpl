#!/bin/sh

check=`ps -e | grep "firefox"`
if [[ $? -ne 1 ]] ; then
    echo "please make sure firefox is not running!"
    exit 1
fi


PROFIL_DIR=`grep -o '.\{8\}\.default' /home/${USER}/.mozilla/firefox/profiles.ini`
echo "found: ${PROFIL_DIR}"

echo "creating tar.gz"
date +"%Y_%m_%d_thunderbird"
tar -zcvf /tmp/$(date +"%Y_%m_%d_firefox")_${PROFIL_DIR}.tar.gz /home/${USER}/.mozilla/firefox/${PROFIL_DIR}
echo "created: /tmp/${PROFIL_DIR}.tar.gz"
