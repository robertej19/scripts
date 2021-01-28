#!/bin/sh
password="$(cat ~/scripts/.pass/.jlab)"

echo "Usage: Enter relative path of file or directory to be copied from local to remote"
echo "Example: ./copy_from_jlab.sh test.txt"

loc=$1

sshpass -p "$password" scp -r -v robertej@ftp.jlab.org:/u/home/robertej/$loc . 2>&1 | grep -v debug1

echo '...'

echo Copied $loc from remote to local
