#!/bin/bash

shopt -s nullglob globstar

password_files=( ~/.password-store/**/*.gpg )
password_files=( "${password_files[@]##*/.password-store/}" )
password_files=( "${password_files[@]%.gpg}" )

password=$(printf '%s\n' "${password_files[@]}" | rofi -dmenu "$@" -lines 15 -p "Pass Store: ")

pass -c "$password"
