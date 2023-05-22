#!/bin/bash

echo "
/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
/                                       /
/                                       /
/             Backup script.            /
/                                       /
/                                       /
/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
";

# What to backup. 
echo "what to backup"$'\n' 
path=()
while  read -p "Enter the path : " input; do
    # body
    path+=("$input");
    if [ "$input" == "" ]; then
         # if body
         break
    else
         # else body
         echo "${path[@]}"
    fi
done

# Where to backup to.
read -p "Set backup folder path : " destination;
echo "$destination";

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tar.gz"

# Print start status message.
echo "Backing up ${path[@]} to $destination/$archive_file"
date
echo
# Backup the files using tar.

tar -zcvf $destination/$archive_file  --absolute-names ${path[@]}

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $destination to check file sizes.
ls -lh $destination
