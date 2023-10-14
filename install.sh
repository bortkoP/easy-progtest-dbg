#!/bin/bash

echo "You are installing Easy progtest debuger"
EXIST=$(ls /usr/bin | grep dbg)
if [ -z "$EXIST" ]
then   
    cp $(pwd)/src/dbg /usr/bin/ 
    ERROR=$(echo $?)
    if [ $ERROR == 0 ]
    then
        while [ 1==1 ]
        do
            read -p "Type in editor you would like to use for creating datasets. (such as vim/nano) " EDITOR

            ISEDITOR=$(ls /usr/bin | grep $EDITOR)
            if [ -z $ISEDITOR ]
            then
                echo -e "\033[1;31mThere is no such an editor installed!\033[0m"
            else
                break
            fi
        done

        touch /home/$(logname)/.dbguserconf
        echo $EDITOR > /home/$(logname)/.dbguserconf
        chown  $(logname) /home/$(logname)/.dbguserconf
        chgrp  $(logname) /home/$(logname)/.dbguserconf
        echo "Config file created /home/$(logname)/.dbguserconf "
        echo -e "\033[1;32mSuccessfully installed on your computer, use with dbg -h, enjoy (by bortkoP)\033[0m"
        exit
    else
        echo -e "\033[1;31mYou need to be superuser to do this!\033[0m"
    exit
    fi
else
    echo "Already installed, nothing to do here."
    exit
fi


