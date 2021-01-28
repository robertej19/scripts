#!/bin/sh
password="$(cat ~/scripts/.pass/.jlab)"
username="$(cat ~/scripts/.pass/.username)"

echo "Usage: Enter relative path of file or directory to be copied from local to remote"
echo "Example: ./copy_from_jlab.sh test.txt"

loc=$1

sshpass -p "$password" scp -r -v $username@ftp.jlab.org:/u/home/$username/$loc . 2>&1 | grep -v debug1

echo '...'

echo Copied $loc from remote to local
