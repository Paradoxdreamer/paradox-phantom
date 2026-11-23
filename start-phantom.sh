#!/bin/bash
# Paradox Phantom launcher

if command -v evilginx2 >/dev/null 2>&1; then
  evilginx2
elif command -v evilginx >/dev/null 2>&1; then
  evilginx
elif [ -f "./evilginx" ]; then
  ./evilginx
elif [ -f "$HOME/go/bin/evilginx2" ]; then
  "$HOME/go/bin/evilginx2"
elif [ -f "$HOME/go/bin/evilginx" ]; then
  "$HOME/go/bin/evilginx"
else
  echo "[-] evilginx binary not found. Run install-linux.sh or install-termux.sh first."
  exit 1
fi
