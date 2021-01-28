#!/bin/sh
password="$(cat ~/scripts/.pass/.jlab)"
username="$(cat ~/scripts/.pass/.username)"

echo "Usage: Enter full path of file or directory to be copied from local to remote"
echo "Example: ./copy_to_jlab.sh /home/bobby/scripts/test.txt"

loc=$1

sshpass -p "$password" scp -r $loc $username@ftp.jlab.org:/u/home/$username/

echo '...'

echo Copied $loc from local to remote
