#!/bin/sh
password="$(cat ~/scripts/.pass/.submit)"
username="$(cat ~/scripts/.pass/.username)"

sshpass -p $password ssh $username@submit.mit.edu -Y
