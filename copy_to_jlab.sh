#!/bin/sh
password="$(cat ~/scripts/.pass/.jlab)"
#echo "$password"

echo "Usage: Enter full path of file or directory to be copied from local to remote"
echo "Example: ./copy_to_jlab.sh /home/bobby/scripts/test.txt"

#loc=  '/mnt/c/Users/rober/Dropbox/Bobby/Linux/personal_projects/npv/htmls/'
loc=$1
#echo "$loc"

sshpass -p "$password" scp -r $loc robertej@ftp.jlab.org:/u/home/robertej/

echo '.'
echo '.'
echo '.'

#scp -r '$loc' robertej@submit.mit.edu:/afs/lns.mit.edu/user/robertej

echo Copied $loc from local to remote
