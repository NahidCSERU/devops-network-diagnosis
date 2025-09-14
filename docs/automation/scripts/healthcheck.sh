#!/bin/bash
# Log system uptime and memory usage
# Author: <Nahid Hasan>
# Date: 14.09.2025

echo "[INFO] Healthcheck on $(date)" 
uptime
free -h
df -h | grep "/dev/"
