#!/usr/bin/expect

set timeout 20

set cmd [lrange $argv 1 end]
set password [lindex $argv 0]

eval spawn $cmd
expect "assword:"
send "$password\r";
expect "login"
send "ssh -Y ifarm1901.jlab.org\r";
#expect "assword:"
#send "$password\r";
#interact

