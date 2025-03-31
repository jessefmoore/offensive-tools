#!/bin/bash

# Check if git is installed, if not, install it
if ! command -v git &> /dev/null
then
    echo "Git not found, installing..."
    sudo apt update && sudo apt install git -y
else
    echo "Git is already installed."
fi

# Clone the Empire repository with the --recursive flag
echo "Cloning Empire repository..."
git clone --recursive https://github.com/BC-SECURITY/Empire.git

# Navigate into the Empire directory
cd Empire

# Checkout the latest tag
echo "Checking out the latest tag..."
./setup/checkout-latest-tag.sh

# Install Empire
echo "Installing Empire..."
./ps-empire install -y

echo "Empire installation complete!"
