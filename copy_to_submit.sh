#!/bin/sh
password="$(cat ~/scripts/.pass/.submit)"
username="$(cat ~/scripts/.pass/.username)"


echo "Usage: Enter full path of file or directory to be copied from local to remote"
echo "Example: ./copy_to_submit.sh /home/bobby/scripts/test.txt"


loc=$1


sshpass -p "$password" scp -r $loc $username@submit.mit.edu:/afs/lns.mit.edu/user/$username

echo '...'


echo Copied $loc from local to remote
