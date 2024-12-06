# Variable for the report output file, choose a NEW output file name

REPORT_FILE="Report_File_2"

# Output the sshd configuration file

echo "Gaterhing details from sshd configuration file"
echo "sshd configuration file:$(cat /etc/ssh/sshd_config)" >> $REPORT_FILE
print "\n" >> $REPORT_FILE

# Update the packages and services

echo "updating packages and services"
sudo apt update && sudo apt upgrade -y
echo "packages have been updated and upgraded" >> $REPORT_FILE
printf "\n" >> $REPORT_FILE

# List all installed packages

echo "Installed Packages: $(dpkg --get-selections)" >> $REPORT_FILE
printf "\n" >> $REPORT_FILE

# Print logging config
echo “Printing out logging configuration data”
sudo journalctl
echo "journald.conf file data: $(cat /e/tc/systemd/journald.conf)" >> $REPORT_FILE
printf "\n" >> $REPORT_FILE

echo "logrotate.conf file data:$(cat /etc/logrotate.conf)" >> $REPORT_FILE
printf "\n" >> $REPORT_FILE
echo "Script execution completed. Check $REPORT_FILE for details."
