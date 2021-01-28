#!/bin/sh
password="$(cat ~/scripts/.pass/.jlab)"
username="$(cat ~/scripts/.pass/.username)"

server=$username"@login.jlab.org"


~/scripts/expect_jlab.ex $password ssh -Y $server
