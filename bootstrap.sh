#!/bin/sh

# setup and start ssh
sudo dnf install -y ansible python2-dnf
ssh-keygen -b 4096 -f $HOME/.ssh/ansible -N ''
ssh-keyscan -t ecdsa 127.0.0.1 >> $HOME/.ssh/known_hosts

cat $HOME/.ssh/ansible.pub >> $HOME/.ssh/authorized_keys

touch $HOME/.ssh/config
cat <<EOT >> $HOME/.ssh/config
Host 127.0.0.1
    IdentityFile ~/.ssh/ansible
EOT

sudo chmod 600 $HOME/.ssh/*
sudo systemctl enable sshd
sudo service sshd start


sudo sh -c 'echo "[local]" > /etc/ansible/hosts'
sudo sh -c 'echo "127.0.0.1" >> /etc/ansible/hosts'


ansible-playbook laptop.yaml --ask-become-pass
