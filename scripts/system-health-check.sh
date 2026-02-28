#!/bin/bash

#############################################################
# Author: Tanish Rai
# Date: 14/02/2026
# Description: Professional System Health Monitoring Script
# Purpose: Displays key system metrics 
#############################################################

#!/bin/bash

# Exit on error
set -e

# Colors
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Header
echo -e "${GREEN}==============================================${NC}"
echo -e "${GREEN}           SYSTEM HEALTH REPORT              ${NC}"
echo -e "${GREEN}==============================================${NC}"

# Timestamp & Host Info
echo -e "\nReport Time  : $(date)"
echo -e "Hostname     : $(hostname)"
echo -e "Logged User  : $(whoami)"

# ------------------------------------------------------------

# 1. CPU Processes (Top 5)
echo -e "\n${GREEN}--- Top Processes by CPU ---${NC}"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

# ------------------------------------------------------------

# 2. Memory Usage
echo -e "\n${GREEN}--- Memory Usage ---${NC}"
free -h

# ------------------------------------------------------------

# 3. Disk Usage
echo -e "\n${GREEN}--- Disk Usage ---${NC}"
df -h | grep '^/dev/'

# ------------------------------------------------------------

# 4. CPU Core Count
echo -e "\n${GREEN}--- CPU Information ---${NC}"
echo "Total CPU Cores: $(nproc)"
<<<<<<< HEAD
=======

# -------------------------------------
# 5️⃣ Uptime
echo -e "\n⏳ Uptime       : $(uptime -p)"
