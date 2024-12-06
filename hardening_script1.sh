#!/bin/bash

# Variable for the report output file, choose an output file name
REPORT_FILE="report_output"

# Output the hostname
echo "Gathering hostname..."
hostname
echo "Hostname: $(hostname)" >> $REPORT_FILE
printf "\n" >> $REPORT_FILE

# Output the OS version
echo "Gathering OS version..." 
uname -a 
echo "OS Version: $(uname -a)" >> $REPORT_FILE
printf "\n" >> $REPORT_FILE

# Output memory information
echo "Gathering memory information..."
free -h
echo "Memory Information: $(free -h)" >> $REPORT_FILE 
printf "\n" >> $REPORT_FILE

# Output uptime information
echo "Gathering uptime information..."
uptime
echo "Uptime Information: $(uptime)" >> $REPORT_FILE 
printf "\n" >> $REPORT_FILE

# Backup the OS
echo "Backing up the OS..."
#sudo tar -cvpzf backup.tar.gz --exclude=/proc --exclude=/sys --exclude=/tmp --exclude=/mnt --one-file-system /
echo "OS backup completed." >> $REPORT_FILE
printf "\n" >> $REPORT_FILE

# Force Sherlock, Watson, and Mycroft to change their password upon their next login
echo "Forcing Sherlock, Watson, and Mycroft users to change their password on next login..." 
for user in sherlock watson mycroft;do sudo chage -d 0 "$user" 
done 
echo "Password change enforced for Sherlock, Watson, and Mycroft." >> $REPORT_FILE 
printf "\n" >> $REPORT_FILE

# Output the sudoers file to the report
echo "Gathering sudoers file..."
sudo cat /etc/sudoers
echo "Sudoers file:$(sudo cat /etc/sudoers)" >> $REPORT_FILE
printf "\n" >> $REPORT_FILE

# Script to check for files with world permissions and update them
echo "Checking for files with world permissions..."
#find files with world permissions
sudo find /home -type f \( -perm -0040 -o -perm -0020 -o -perm -0010 \) -exec ls -l {} \;
#remove world permissions
echo "Updating permissions for specific scripts..." 
sudo find /home -type f \( -perm -0040 -o -perm -0020 -o -perm -0010 \) -exec chmod o-rwx {} \; 
echo "World permissions have been removed from any files found." >> $REPORT_FILE 
printf "\n" >> $REPORT_FILE
#find engineering scripts
sudo find /home -type f -iname '*engineering*' -exec ls -l {} \;
#set permission for engineering group
sudo find /home -type f -iname '*engineering*' -exec chmod 770 {} \; 
echo "Updating permissions for Engineering scripts."
echo "Permissions updated for Engineering scripts." >> $REPORT_FILE
printf "\n" >> $REPORT_FILE
#find research scripts
sudo find /home -type f -iname '*research*' -exec ls -l {} \;
#set permission for research group
echo "Updating permissions for Research scripts..." 
sudo find /home -type f -iname '*research*' -exec chmod 770 {} \; 
echo "Permissions updated for Research scripts" >> $REPORT_FILE
#find finance scripts
echo "Updating permissions for Finance scripts"
sudo find /home -type f -iname '*finance*' -exec ls -l {} \;
#set permission for finance group
sudo find /home -type f -iname '*finance*' -exec chmod 770 {} \;
echo "Permissions updated for Finance scripts." >> $REPORT_FILE
printf "\n" >> $REPORT_FILE
echo "Script execution completed. Check $REPORT_FILE for details"
