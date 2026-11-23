#!/bin/bash
# Paradox Phantom - Linux installer (Evilginx2)
set -e

echo "[*] Paradox Phantom installer (Linux)"

sudo apt update
sudo apt install -y golang-go git make

echo "[*] Installing Evilginx2..."
go install github.com/kgretzky/evilginx2@latest

# Also offer source build option
if [ ! -d "evilginx2" ]; then
  git clone https://github.com/kgretzky/evilginx2.git
fi

cd evilginx2
go build -o ../evilginx
cd ..

echo ""
echo "[+] Done."
echo "    Binary (go install) : ~/go/bin/evilginx2  (or evilginx depending on version)"
echo "    Binary (source)     : ./evilginx"
echo ""
echo "Make sure ~/go/bin is in your PATH"
echo "    export PATH=\$PATH:~/go/bin"
