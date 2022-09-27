#!/bin/bash

while true; do
    echo 
    echo "Enter one of the following action or press CTRL-D to exit."
    echo "C - create a new item"
    echo "R - read and existing item"
    echo "U - update an existing item"
    echo "D - delete an existing item"

    if ! read ans; then
        # got EOF
        break
    fi 
    case "$ans" in
        
        C|c)
        ./create.bash
        ;;
        
        R|r) 
        ./read.bash
        
        ;;

        U|u)
        ./update.bash
        
        ;;

        D|d)
        ./delete.bash

;;
        *)echo "ERROR: invalid option"
        
        esac
     
    done
