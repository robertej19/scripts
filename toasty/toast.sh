#! /usr/bin/env bash
#the #@ takes the rest of the arguements and uses as command line input

$@ && /home/rober/scripts/toasty/toast64.exe --app-id "WSL script"   --title "WSL Script Complete"   --message "$@"   --icon "C:\Users\Example\Pictures\icon.png"
