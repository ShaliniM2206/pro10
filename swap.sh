#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name:shaliniM
# Roll Number:1U24IT104
# =====================================

# Write your commands below
# 1. Preallocate space for the swap file (1GB = 1024M)
sudo fallocate -l 1G /swapfile

# 2. Set strict permissions (readable/writable only by root)
sudo chmod 600 /swapfile

# 3. Set up the Linux swap area
sudo mkswap /swapfile

# 4. Activate the swap file
sudo swapon /swapfile

# 5. Make the swap change permanent across reboots
echo '/swapfile swap swap defaults 0 0' | sudo tee -a /etc/fstab

