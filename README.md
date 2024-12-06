# System Information and Security Script

## Overview

This Bash script performs various system information gathering and security-related tasks on a Linux system. It collects system data, enforces password policies, and manages file permissions, outputting results to a report file.

## Features

- **System Information Gathering**
  - Hostname
  - OS version
  - Memory information
  - System uptime

- **Security Measures**
  - OS backup (commented out by default)
  - Force password change for specific users
  - Sudoers file examination

- **File Permission Management**
  - Identify and remove world-readable permissions
  - Set specific permissions for Engineering, Research, and Finance scripts

## Usage

1. Save the script as `system_info_security.sh`
2. Make it executable: `chmod +x system_info_security.sh`
3. Run the script with sudo privileges: `sudo ./system_info_security.sh`

## Output

The script generates a report file named `report_output` in the current directory, containing all gathered information and actions performed.

## Caution

- This script requires sudo privileges to run effectively.
- The OS backup function is commented out by default. Uncomment if needed, but be aware of p
