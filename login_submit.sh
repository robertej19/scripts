#!/bin/sh
password="$(cat ~/scripts/.pass/.submit)"
#echo "$password"

sshpass -p $password ssh robertej@submit.mit.edu -Y
