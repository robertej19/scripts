#!/bin/sh
password="$(cat ~/scripts/.pass/.submit)"
#echo "$password"

echo "Usage: Enter full path of file or directory to be copied from local to remote"
echo "Example: ./copy_to_submit.sh /home/bobby/scripts/test.txt"


loc=$1


sshpass -p "$password" scp -r $loc robertej@submit.mit.edu:/afs/lns.mit.edu/user/robertej

echo '...'


echo Copied $loc from local to remote
