#!/bin/sh
password="$(cat ~/scripts/.pass/.jlab)"

server="robertej@login.jlab.org"
echo $server

~/scripts/expect_jlab.ex $password ssh -Y $server
