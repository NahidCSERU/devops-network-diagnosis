#!/bin/bash
# Usage: ./backup.sh ./localdir user@host:/remote/backup/
# Author: <Nahid Hasan>
# Date: 13.09.2025

SRC=$1
DEST=$2

if [ -z "$SRC" ] || [ -z "$DEST" ]; then
  echo "Usage: $0 ./localdir user@host:/remote/backup/"
  exit 1
fi

echo "🔄 Syncing $SRC to $DEST..."
rsync -avz -e ssh "$SRC" "$DEST"
