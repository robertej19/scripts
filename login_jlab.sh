#!/bin/sh
password="$(cat ~/scripts/.pass/.jlab)"
#echo "$password"
server="robertej@login.jlab.org"
echo $server

~/scripts/expect_jlab.ex $password ssh -Y $server

#sshpass -p $password ssh -J robertej@login.jlab.org robertej@ifarm.jlab.org

#gateway="robertej@login.jlab.org"
#echo "$gateway"
#server="robertej@ifarm.jlab.org"
#echo "$server"

#ssh -oProxyCommand="ssh -W %h:%p $gateway" $server

#sspass='ssh -o ProxyCommand="ssh -W %h:%p robertej@login.jlab.org" robertej@ifarm.jlab.org'

#echo $sspass
#sshpass -p $password $sspass
#sshpass -p $password ssh -o ProxyCommand="ssh -W %h:%p $gateway" $server

#sshme='-oProxyCommand="sshpass -p ssh -W %h:%p robertej@ifarm.jlab.org"'
#/usr/bin/sshpass -p$password ssh $sshme robertej@login.jlab.org

#sshpass -f .pass/.jlab ssh robertej@login.jlab.org
