#!/bin/bash
# Usage: ./remote-cmd.sh user@host "command"
# Author: <Nahid Hasan>
# Date: 13.09.2025

REMOTE=$1
CMD=$2

if [ -z "$REMOTE" ] || [ -z "$CMD" ]; then
  echo "Usage: $0 user@host 'command'"
  exit 1
fi

echo "🔹 Running command on $REMOTE..."
ssh -o BatchMode=yes "$REMOTE" "$CMD"
