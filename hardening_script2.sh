# Variable for the report output file, choose a NEW output file name

REPORT_FILE="Report_File_2"

# Output the sshd configuration file

echo "Gaterhing details from sshd configuration file"
echo "sshd configuration file:$(cat /etc/ssh/sshd_config)" >> $REPORT_FILE
print "\n" >> $REPORT_FILE

