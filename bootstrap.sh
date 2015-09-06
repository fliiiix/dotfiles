#!/bin/sh

# setup and start ssh
sudo dnf install -y ansible
ssh-keygen -b 4096 -f $HOME/.ssh/ansible -N ''
cat $HOME/.ssh/ansible.pub >> $HOME/.ssh/authorized_keys
sudo chmod 600 $HOME/.ssh/*
sudo systemctl enable sshd
sudo service sshd start

sudo sh -c 'echo "127.0.0.1" >> /etc/ansible/hosts'
