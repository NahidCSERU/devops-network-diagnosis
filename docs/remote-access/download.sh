#!/bin/bash
# Usage: ./download.sh user@host:/remote/file localpath
# Author: <Nahid Hasan>
# Date: 13.09.2025

SRC=$1
DEST=$2

if [ -z "$SRC" ] || [ -z "$DEST" ]; then
  echo "Usage: $0 user@host:/remote/file localpath"
  exit 1
fi

echo "📥 Downloading $SRC to $DEST..."
scp -o BatchMode=yes "$SRC" "$DEST"
