# System Information and Security Scripts

## Overview

This repository contains two Bash scripts designed for system information gathering, security enhancement, and system maintenance on Linux systems. These scripts collect system data, enforce security policies, manage file permissions, and perform system updates.

## Scripts

### 1. System Information and Security Script (Script 1)

#### Features
- Gathers system information (hostname, OS version, memory, uptime)
- Performs OS backup (commented out by default)
- Enforces password change for specific users
- Examines sudoers file
- Manages file permissions

#### Output
Generates a report file named `report_output`

### 2. System Configuration and Update Script (Script 2)

#### Features
- Captures SSH configuration details
- Updates and upgrades system packages
- Lists all installed packages
- Retrieves logging configuration data

#### Output
Generates a report file named `Report_File_2`

## Usage

1. Ensure both scripts are in the same directory.
2. Make the scripts executable:

chmod +x script1.sh script2.sh

3. Run the scripts with sudo privileges:

sudo ./script1.sh
sudo ./script2.sh


## Output Files

- Script 1 generates `report_output`
- Script 2 generates `Report_File_2`

Both files will be created in the current directory.

## Caution

- These scripts require sudo privileges to run effectively.
- The OS backup function in Script 1 is commented out by default. Uncomment if needed, but be aware of potential disk space issues.
- Modifying file permissions and system configurations can impact system functionality. Use with caution.

## Customization

- In each script, you can modify the `REPORT_FILE` variable to change the output file name.
- Adjust user names, file search patterns, and permission settings as needed for your environment.

## Authors

Brendan Conroy, Kuleni, Frederick
