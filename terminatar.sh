# Responsible for "killing" stopping a process, by allowing the user to enter the process name
# This method utilizes the SIGKILL value 9 found in "signal(7)"
# This script is different from the linux command "killall" because it does not use the SIGTERM value meaning the program
# is terminated gracefuly
# @Author: Leeroy P. Williams
#!/bin/bash

read -p "Program name: " progname
processID=$(ps -aux | grep $progname | awk 'NR==1{print $2}')
destroyed=$(kill -9 $processID)
echo "$progname has been terminated."
