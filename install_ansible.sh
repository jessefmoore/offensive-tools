#!/bin/bash
# dfir-jesseee PRCCDC 2025
# Update package lists and upgrade system for Ansible install.
sudo apt update && sudo apt upgrade -y

# Install required dependencies
sudo apt install -y software-properties-common

# Add Ansible PPA repository
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Install Ansible
sudo apt install -y ansible

# Verify installation
ansible --version
