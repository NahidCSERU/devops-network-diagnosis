# Linux / DevOps-network-diagnosis Essential Commands & Tools

This repository documents essential Linux and DevOps tools and commands that every DevOps engineer should know for system administration, networking, monitoring, and automation.

---

## 🖥️ System Information
Check system details, hostname, and network interfaces:
- `hostnamectl` → View system hostname and OS info
- `ip addr` → Display network interface IP addresses

---

## 🌐 Connectivity
Test network connectivity and routing:
- `ping <host>` → Test if a host is reachable
- `traceroute <host>` → Trace network path to a host

---

## 🔍 Test Access
Verify access to URLs or APIs:
- `curl <url>` → Send HTTP requests
- `wget <url>` → Download files from a URL

---

## 🔌 Ports Check
Inspect active connections and listening ports:
- `netstat -tulnp` → Show TCP/UDP ports and services
- `ss -tulnp` → Modern alternative to netstat

---

## 🔥 Firewall
Manage firewall rules:
- `ufw` → Uncomplicated Firewall (Ubuntu-friendly)
- `iptables` → Advanced Linux firewall

---

## 🖥️ Remote Work
Work with remote servers securely:
- `ssh user@host` → Remote login
- `scp file user@host:/path` → Securely copy files to remote host

---

## ⚙️ Automation
Schedule recurring tasks:
- `crontab -e` → Edit cron jobs for automation

---

## 📜 Logs
Monitor system logs and services:
- `journalctl` → View systemd logs
- `/var/log/` → Directory containing system and application logs

---

## 🌐 DNS / Network Deep Dive
Query DNS and test network services:
- `nslookup <domain>` → Query DNS server
- `dig <domain>` → Detailed DNS lookup
- `host <domain>` → Simple DNS lookup
- `telnet <host> <port>` → Test TCP connectivity to a port

---

## 📖 Resources
- [Linux Command Cheat Sheet](https://www.linuxtrainingacademy.com/linux-commands-cheat-sheet/)
- [Networking Tools Documentation](https://linux.die.net/man/)
- [DevOps Command Reference](https://docs.oracle.com/en-us/iaas/tools/oci-cli/3.66.0/oci_cli_docs/cmdref/devops.html)
