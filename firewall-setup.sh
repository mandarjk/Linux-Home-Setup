#!/bin/bash
#----SETTING UP FIREWALL----#
echo "#----SETTING UP FIREWALL----#"
#----Firewall install and setup
echo "#----INSTALLING FIREWALL----#"
#----Install firewall
distro=$(cat /etc/os-release | grep ID_LIKE) 
echo "$distro"
if [ "$distro" = "ID_LIKE=\"ubuntu debian\"" ];
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
