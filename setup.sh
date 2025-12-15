#!/bin/bash

# ==========================================
# GAJARBOTOL BOMBER - AUTOMATED INSTALLER
# ==========================================

# 1. Clear Screen for a fresh start
clear

echo -e "\033[93m[*] Starting Gajarbotol Bomber Setup...\033[0m"
echo -e "\033[93m[*] Updating Termux Repositories...\033[0m"

# 2. Update and Upgrade Termux Packages
pkg update -y && pkg upgrade -y

# 3. Install Python and Git
echo -e "\033[93m[*] Installing Python & Git...\033[0m"
pkg install python git -y

# 4. Install Python Dependencies (Requests, Urllib3)
echo -e "\033[93m[*] Installing Python Libraries (pip)...\033[0m"
pip install requests urllib3

# 5. Fix potential SSL/Version conflicts
echo -e "\033[93m[*] Verifying Libraries...\033[0m"
pip install requests urllib3 --force-reinstall

# 6. Set Permissions
chmod +x gajarbotol_bomber.py

# 7. Launch the Tool
echo -e "\033[92m[+] Setup Complete! Launching Tool...\033[0m"
python boomber.py
