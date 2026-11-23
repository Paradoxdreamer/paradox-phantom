#!/data/data/com.termux/files/usr/bin/bash
# Paradox Phantom - Termux installer (Evilginx2)
set -e

echo "[*] Paradox Phantom - Termux installer"

pkg update -y
pkg install -y golang git

echo "[*] Installing via go install..."
go install github.com/kgretzky/evilginx2@latest

if ! grep -q 'go/bin' ~/.bashrc 2>/dev/null; then
  echo 'export PATH=$PATH:~/go/bin' >> ~/.bashrc
fi

echo ""
echo "[+] Done."
echo "    Run: source ~/.bashrc"
echo "    Then: evilginx2   (or check ~/go/bin for the exact binary name)"
echo ""
echo "[!] For real phishing you will need a domain + TLS certs."
echo "    Termux works well as the evilginx host when paired with a VPS/tunnel."
