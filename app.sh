#!/bin/bash
echo $'\n'
toilet -f pagga.tlf "Linux Setup"

echo $'\n'"Script for personal linux setup"

while read -p $'\n'"Choose the following options to execute the script "$'\n'" 1. Backup Script to setup backup "$'\n'" 2. Firewall Script to setup Firewall "$'\n'" 3. Application Script to setup application "$'\n\n'" Enter the script number to exeute script : " num; do
    # body
    if [ "$num" == 1 ]; then
        echo "executing Backup Script"
        ./backup.sh

    elif [ "$num" == 2 ]; then
        echo "executing Firewall Script"
        ./firewall-setup.sh

    elif [ "$num" == 3 ]; then
        echo "executing setup script"
        ./setup.sh

    else
        echo $'\n'" :( Please Enter Valid Input (1 2 3)"
        toilet -f pagga.tlf "Exit Bye"
        break
    fi
done