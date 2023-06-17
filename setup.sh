echo "
____ ___  ___  _    _ ____ ____ ___ _ ____ _  _    ____ ____ ___ _  _ ___ 
|__| |__] |__] |    | |    |__|  |  | |  | |\ |    [__  |___  |  |  | |__]
|  | |    |    |___ | |___ |  |  |  | |__| | \|    ___] |___  |  |__| |   
                                                                          

"

#check the distribution
if [ -f "/etc/debian_version" ];
then
    # Install The Basic Utility
    # 1. Install Text editor 
    echo "##Installing Text editor (Vim and Nano) ##"
    sudo apt install vim nano 

    # 2. Install Disk utility
    echo "##Installing Disk Utility (gparted) ##"
    sudo apt install gparted

    # 3. Install monitoring tool
    echo "##Installing Monitoring tools (Htop, powertop)"
    sudo apt install htop powertop

    #install Applications
    echo "##Installing Application ##"

    # 1. Image Editor
    echo "##Installing Gimp ##"
    sudo apt install gimp
    
    # 2. Install Media player
    echo "##Installing VLC ##"
    sudo apt install vlc

    # 3. Install Backup Tool
    echo "##Installing Timeshift Backup Tool ##"
    sudo apt install timeshift

    # 4. Setup FLatpak
    echo "##Setup Flatpak ##"
    sudo apt install flatpak
    sudo apt install gnome-software-plugin-flatpak
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

else
    # Install The Basic Utility
    # 1. Install Text editor 
    echo "##Installing Text editor (Vim and Nano) ##"
    sudo dnf install vim nano 

    # 2. Install Disk utility
    echo "##Installing Disk Utility (gparted) ##"
    sudo dnf install gparted

    # 3. Install monitoring tool
    echo "##Installing Monitoring tools (Htop, powertop)"
    sudo dnf install htop powertop

    #install Applications
    echo "##Installing Application ##"

    # 1. Image Editor
    echo "##Installing Gimp ##"
    sudo dnf install gimp
    
    # 2. Install Media player
    echo "##Installing VLC ##"
    sudo dnf install vlc

    # 3. Install Backup Tool
    echo "##Installing Timeshift Backup Tool ##"
    sudo dnf install timeshift
    
    # 4. Setup FLatpak
    echo "##Setup Flatpak ##"
    sudo dnf install flatpak
    sudo dnf install gnome-software-plugin-flatpak
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

fi


