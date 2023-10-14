#!/bin/bash

echo "You are uninstalling Easy progtest debuger"
EXIST=$(ls /usr/bin | grep dbg)
if [ -z "$EXIST" ]
then   
    echo "Already uninstalled, nothing to do here."
    exit
else
    echo "Uninstalling..."
    rm -f /home/$(logname)/.dbguserconf
    echo "Config file /home/$(logname)/.dbguserconf removed"
    rm -f /usr/bin/dbg
    echo "Main script /usr/bin/dbg removed"
    echo -e "\033[1;32mSuccessfully uninstalled!\033[0m"
    exit
fi