#!/bin/bash
# Backup important files (example: /etc)
# Author: <Nahid Hasan>
# Date: 14.09.2025

BACKUP_DIR="$HOME/backups"
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/etc-$(date +%F).tar.gz /etc
echo "[INFO] Backup completed on $(date)"
