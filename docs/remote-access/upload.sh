#!/bin/bash
# Usage: ./upload.sh localfile user@host:/remote/path/
# Author: <Nahid Hasan>
# Date: 13.09.2025

FILE=$1
DEST=$2

if [ -z "$FILE" ] || [ -z "$DEST" ]; then
  echo "Usage: $0 file user@host:/remote/path/"
  exit 1
fi

echo "📤 Uploading $FILE to $DEST..."
scp -o BatchMode=yes "$FILE" "$DEST"
