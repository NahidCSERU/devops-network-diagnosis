#!/bin/bash
# Remove old backups (older than 7 days)
# Author: <Nahid Hasan>
# Date: 14.09.2025

find "$HOME/backups" -type f -mtime +7 -exec rm -f {} \;
echo "[INFO] Old backups cleaned on $(date)"
