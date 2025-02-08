#!/bin/sh

check=`ps -e | grep "thunderbird"`
if [[ $? -ne 1 ]] ; then
    echo "please make sure thunderbird is not running!"
    exit 1
fi


PROFIL_DIR=`grep 'Path' /home/${USER}/.thunderbird/profiles.ini | grep -o '.\{8\}\.default.*'`
echo "found: ${PROFIL_DIR}"

echo "creating tar.gz"
tar -zcvf /tmp/$(date +"%Y_%m_%d_thunderbird")_${PROFIL_DIR}.tar.gz /home/${USER}/.thunderbird/${PROFIL_DIR}
echo "created: /tmp/$(date +"%Y_%m_%d_thunderbird")_${PROFIL_DIR}.tar.gz"
