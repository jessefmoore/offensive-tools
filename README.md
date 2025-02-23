# offensive-tools
 
# Ansible Playbook for Security Tools Installation

## Overview
This repository contains an Ansible playbook to install various security tools on a Linux system. Additionally, there is a separate script to install Ansible on Debian-based systems before running the playbook.

## Prerequisites
- A Debian-based Linux system (Ubuntu, Debian, etc.)
- Internet access to download necessary packages
- sudo/root privileges

## When to Use the Ansible Install Script
If Ansible is not already installed on your system, you need to run the `install_ansible.sh` script before using the playbook.

### Steps to Install Ansible
1. Open a terminal.
2. Navigate to the repository directory:
   ```bash
   cd offensive-tools
   ```
3. Run the installation script:
   ```bash
   chmod +x install_ansible.sh
   ./install_ansible.sh
   ```
4. Verify Ansible installation:
   ```bash
   ansible --version
   ```

## How to Use the Ansible Playbook
Once Ansible is installed, you can run the playbook to install security tools.

### Steps to Run the Playbook
1. Ensure you are in the repository directory:
   ```bash
   cd offensive-tools
   ```
2. Run the Ansible playbook:
   ```bash
   ansible-playbook -i "localhost," -c local install_infosec_tools.yml
   ```

## Notes
- The playbook installs various security tools such as Hydra, Nikto, Burp Suite, and more.
- It also sets up a Python virtual environment.
- Ensure you have sudo privileges before running the playbook.

## Troubleshooting
- If you encounter permission issues, try running with `sudo`:
  ```bash
  sudo ansible-playbook -i "localhost," -c local install_infosec_tools.yml
  ```
- If an installation fails, check your internet connection and re-run the script.

## License
This project is licensed under the MIT License.

## Author
Jesse F. Moore
