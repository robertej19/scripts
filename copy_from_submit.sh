#!/bin/sh
password="$(cat ~/scripts/.pass/.submit)"
username="$(cat ~/scripts/.pass/.username)"

echo "Usage: Enter relative path of file or directory to be copied from local to remote"
echo "Example: ./copy_from_submit.sh test.txt"

loc=$1

sshpass -p "$password" scp -r $username@submit.mit.edu:/afs/lns.mit.edu/user/$username/$loc .

echo '...'

echo Copied $loc from remote to local
