#!/bin/sh

case $1 in
   laptop|desktop)
     echo "I'm setting up your $1"
     sudo dnf install -y ansible python2-dnf
     ansible-playbook -i localhost, -c local setups/$1.yml --ask-become-pass ;;
   *)
     echo "Please use $0 laptop|desktop" ;;
esac

