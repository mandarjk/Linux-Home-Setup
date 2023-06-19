#!/bin/bash

echo "
 _      _                     _____      _               
| |    (_)                   / ____|    | |              
| |     _ _ __  _   ___  __ | (___   ___| |_ _   _ _ __  
| |    | | '_ \| | | \ \/ /  \___ \ / _ \ __| | | | '_ \ 
| |____| | | | | |_| |>  <   ____) |  __/ |_| |_| | |_) |
|______|_|_| |_|\__,_/_/\_\ |_____/ \___|\__|\__,_| .__/ 
                                                  | |    
                                                  |_|    

"
echo "Script for personal linux setup"

while read -p ""$'\n'""$'\n'""$'\n'"Choose the following options to execute the script "$'\n'" 1. Backup Script to setup backup "$'\n'" 2. Firewall Script to setup Firewall "$'\n'" 3. Application Script to setup application "$'\n'" Enter the script number to exeute script : " num; do
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
        #echo " :( Please Enter Valid Input (1 2 3)"
        echo "

                _______ _     _ _____ _______      ______  __   __ _______
                |______  \___/    |      |         |_____]   \_/   |______
                |______ _/   \_ __|__    |         |_____]    |    |______
                                                                        

        "
        break
    fi
done