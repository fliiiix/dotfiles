#!/bin/sh

case $1 in
   laptop|desktop)
     echo "I'm setting up your $1"
     sudo dnf install -y ansible python2-dnf libselinux-python
     ansible-playbook -i localhost, -c local --ask-become-pass setups/$1.yml ;;
   *)
     echo "Please use $0 laptop|desktop" ;;
esac

