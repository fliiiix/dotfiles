sshcreate() {
    if [ $# -eq 0 ]; then
        echo "No arguments provided"
        echo "sshcreate <keyname>"
        return 1
    fi
    # https://security.stackexchange.com/a/144044
    ssh-keygen -t ed25519 -a 100 -f $1 -C $MAIL && echo "your public key:" && cat $1.pub
}
