System Status Check Script

Overview

This script provides a quick and organized way to check system status, including:

Disk Storage Usage

CPU Information

GPU Information (Auto-detects GPU ID)

RAM Usage

Prerequisites

Must be run with sudo for full system information access.

Works on Linux systems with df, lscpu, lspci, and free commands available.

Optional: nvidia-smi can be uncommented for NVIDIA GPU users.

Usage

Open a terminal and run:

sudo ./checkSys.sh

Script Breakdown

1. Disk Storage Usage

Displays storage usage in a human-readable format:

df -h

2. CPU Information

Fetches CPU details from system files:

lscpu

3. GPU Information

Auto-detects GPU ID

Displays detailed GPU information

GPU_ID=$(lspci | grep -i VGA | awk '{print $1}')
lspci -vs "$GPU_ID"

Uncomment nvidia-smi if using an NVIDIA GPU.

4. RAM Usage

Shows available and used memory:

free -h

Example Output

========================================
         Disk Storage Usage            
========================================
Filesystem      Size  Used Avail Use% Mounted on  
/dev/nvme0n1p2  233G   81G  141G  37% /  
...
========================================
         CPU Information               
========================================  
...
========================================
         GPU Information               
========================================  
Detected GPU ID: 01:00.0  
...
========================================
         RAM Usage                      
========================================  
Mem:            31Gi       2.6Gi        26Gi  
...

Notes

If swap space is not needed, it can be removed or resized (see script comments for details).

Modify as needed for additional system monitoring features.

Sudo

Nikolai Connelly
