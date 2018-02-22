#!/bin/sh

# setup and start ssh
sudo dnf install -y ansible python2-dnf
ansible-playbook -i localhost, laptop.yaml --ask-become-pass
