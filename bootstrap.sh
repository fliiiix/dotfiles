#!/bin/sh

case $1 in
   laptop|desktop)
     echo "I'm setting up your $1"
     sudo dnf install -y ansible python3-dnf
     ansible-playbook -i localhost, -c local --ask-become-pass setups/$1.yml ;;
   *)
     echo "Please use $0 laptop|desktop" ;;
esac

