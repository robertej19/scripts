#!/bin/bash
# Install expect if not already installed
command -v expect >/dev/null 2>&1 || { echo >&2 "The script requires 'expect' but it's not installed. Installing now."; sudo apt-get install expect; }


# Read passwords
password1=$(head -n 1 ~/scripts/.pass/.jlab_pin)
password2=$(head -n 1 ~/scripts/.pass/.jlab)


# Ask for 6 digit code
echo "Please enter the 6-digit code:"
read code

/usr/bin/expect << EOF
spawn ssh -J robertej@scilogin.jlab.org robertej@ifarm
expect {
  timeout { send_user "\nFailed to get password prompt\n"; exit 1 }
  "Password:"
}
send "$password1$code\r"
expect {
  timeout { send_user "\nFailed to get second password prompt\n"; exit 1 }
  "Password:"
}
send "$password2\r"
expect {
  timeout { send_user "\nFailed to establish SSH session\n"; exit 1 }
  eof
}
EOF
