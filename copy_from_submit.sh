#!/bin/sh
password="$(cat ~/scripts/.pass/.submit)"
#echo "$password"

echo "Usage: Enter relative path of file or directory to be copied from local to remote"
echo "Example: ./copy_from_submit.sh test.txt"

loc=$1
#echo "$loc"

sshpass -p "$password" scp -r robertej@submit.mit.edu:/afs/lns.mit.edu/user/$loc .

echo '.'
echo '.'
echo '.'

#scp -r '$loc' robertej@submit.mit.edu:/afs/lns.mit.edu/user/robertej

echo Copied $loc from remote to local
