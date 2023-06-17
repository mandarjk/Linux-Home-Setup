#!/bin/bash

echo "
____ _ ____ ____ _ _ _ ____ _    _       ____ ____ ___ _  _ ___ 
|___ | |__/ |___ | | | |__| |    |       [__  |___  |  |  | |__]
|    | |  \ |___ |_|_| |  | |___ |___    ___] |___  |  |__| |   
                                                                

"
#----SETTING UP FIREWALL----#
echo "#----SETTING UP FIREWALL----#"
#----Firewall install and setup
echo "#----INSTALLING FIREWALL----#"
#----Install firewall
#distro=$(cat /etc/debian_version) 
#echo "BASE Distribution : $distro"
if [ -f "/etc/debian_version" ];
then
	echo "Installing Firewall"
	sudo apt install ufw
else
	echo "Installing Firewall"
	sudo dnf install ufw
fi
echo "#----Setting Firewall Rules----#"
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status
echo "#----FIREWALL-SETUP-COMPLETED----#"
