##!/bin/bash

# Prepare the environment for the automation scripts
# This script will install the required packages and dependencies

# first update the repositories cache
sudo apt update -y

# upgrade the installed packages
sudo apt upgrade -y

# install the common packages for debian based systems
sudo apt install -y \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    gnupg-agent \
    lsb-release \
    ubuntu-advantage-tools \


# install build-essential tools
sudo apt install -y build-essential cmake 

# install python3 and pip3
sudo apt install -y python3 python3-pip

# install ansible and its dependencies using pip
sudo pip3 install ansible 
