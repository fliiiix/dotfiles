#!/bin/sh

# setup and start ssh
sudo dnf install ansible
ssh-keygen -b 4096 -f $HOME/.ssh/ansible
cat $HOME/.ssh/ansible.pub >> $HOME/.ssh/authorized_keys
sudo chmod 600 $HOME/.ssh/*
sudo systemctl enable sshd
sudo service sshd start

echo "127.0.0.1" >> /etc/ansible/hosts
