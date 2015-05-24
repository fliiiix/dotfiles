sshcreate() {
    if [ $# -eq 0 ]; then
        echo "No arguments provided"
        echo "sshcreate <keyname>"
        return 1
    fi
    ssh-keygen -b 4096 -f $1 -C $MAIL && echo "your public key:" && cat $1.pub
}
