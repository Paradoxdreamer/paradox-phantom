# Paradox Phantom

Advanced man-in-the-middle phishing framework capable of capturing credentials and session cookies (including MFA bypass via reverse proxy).

Paradox usage notes focused on terminal deployment across Linux, Termux, and Windows.

**Primary upstream:** [kgretzky/evilginx2](https://github.com/kgretzky/evilginx2)

---

## Core Capability

- Acts as a reverse proxy between victim and real login pages
- Captures credentials + session tokens / cookies
- Supports phishing pages for major services via phishlets
- Can be used with custom domains and certificates

---

## Platform Support

| Platform   | Notes |
|------------|-------|
| Linux      | Best experience. Full features. |
| Termux     | Works well for the binary / Go build. Great for mobile red team kits. |
| Windows    | Possible via WSL or native Go. |
| Docker     | Clean and recommended for isolation. |

---

## Quick Install — Linux

```bash
go install github.com/kgretzky/evilginx2@latest
# or clone and build
git clone https://github.com/kgretzky/evilginx2.git
cd evilginx2
go build -o evilginx
./evilginx
```

---

## Termux

```bash
pkg update && pkg install golang git
git clone https://github.com/kgretzky/evilginx2.git
cd evilginx2
go build -o evilginx
./evilginx
```

Works solid on modern Termux. Pair with a VPS or ngrok/cloudflare tunnel for public reachability.

---

## Basic Flow

1. Configure domain + TLS certs
2. Load / create phishlets
3. Create lure links
4. Capture sessions

Always operate under authorized engagement rules.

---

## Paradox Series

- Paradox Sovereign — C2
- Paradox Oracle — AD attack paths
- **Paradox Phantom** — phishing / session capture (this)

More tools being added under the Paradox banner.
