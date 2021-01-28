#!/bin/sh
password="$(cat ~/scripts/.pass/.jlab)"

echo "Usage: Enter full path of file or directory to be copied from local to remote"
echo "Example: ./copy_to_jlab.sh /home/bobby/scripts/test.txt"

loc=$1

sshpass -p "$password" scp -r $loc robertej@ftp.jlab.org:/u/home/robertej/

echo '...'

echo Copied $loc from local to remote
