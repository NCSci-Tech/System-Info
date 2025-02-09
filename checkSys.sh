#!/bin/bash

### System Status Check Script ###
### Displays Hard Drive, CPU, GPU, and RAM Information ###
### Please run with sudo! ###

echo "========================================"
echo "          Disk Storage Usage           "
echo "========================================"
df -h

echo -e "\n========================================"
echo "            CPU Information            "
echo "========================================"
lscpu

echo -e "\n========================================"
echo "            GPU Information            "
echo "========================================"
GPU_ID=$(lspci | grep -i VGA | awk '{print $1}')
echo "Detected GPU ID: $GPU_ID"
lspci -vs "$GPU_ID"

# Uncomment the next command if you have an Nvidia GPU
### nvidia-smi ###

echo -e "\n========================================"
echo "             RAM Usage                 "
echo "========================================"
free -h

echo -e "\n========================================"
echo "        System Check Complete          "
echo "========================================"

