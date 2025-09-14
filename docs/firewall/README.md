# Firewall → ufw, iptables
## Overview

A firewall is the first layer of server security. DevOps engineers use it to control network traffic — deciding which ports stay open and which get blocked. On Linux, the most commonly used tools are:

- **ufw (Uncomplicated Firewall)** → Simple and user-friendly wrapper

- **iptable**s → Advanced, powerful, and highly flexible

## 🔹 ufw (Uncomplicated Firewall)

`ufw` is the easiest way to manage firewall rules on Ubuntu/Debian systems.

```
# Enable firewall
sudo ufw enable

# Disable firewall
sudo ufw disable

# Allow SSH (port 22)
sudo ufw allow 22

# Allow HTTP (port 80)
sudo ufw allow 80/tcp

# Allow HTTPS (port 443)
sudo ufw allow 443/tcp

# Deny a specific port (e.g., 21 - FTP)
sudo ufw deny 21

# Show status with rules
sudo ufw status verbose
```

✅ Use Case: Small projects, development servers, or when you need a quick and simple firewall configuration.

## 🔹 iptables

`iptables` is the most powerful Linux firewall tool that allows very granular rule definitions.
```
# List all rules
sudo iptables -L -v -n

# Allow incoming SSH (port 22)
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Allow incoming HTTP (port 80)
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Block incoming FTP (port 21)
sudo iptables -A INPUT -p tcp --dport 21 -j DROP

# Drop all incoming traffic by default (strict mode)
sudo iptables -P INPUT DROP

# Save rules (Ubuntu/Debian)
sudo sh -c "iptables-save > /etc/iptables/rules.v4"
```

✅ Use Case: Production servers, advanced control, complex scenarios (e.g., allow/deny by source IP, rate-limiting, NAT).

## ufw vs iptables
| Feature              | ufw (simple)                  | iptables (advanced)                      |
| -------------------- | ----------------------------- | ---------------------------------------- |
| Complexity           | Very easy                     | More complex, fine-grained               |
| Use Case             | Small projects, quick setup   | Enterprise, production, advanced configs |
| Syntax               | Human-readable                | Detailed rule-based                      |
| Default Availability | Pre-installed (Ubuntu/Debian) | Universal (all Linux distros)            |
| Management           | Beginner-friendly             | Requires expertise                       |

## Summary

- Use **ufw** → if you want quick and simple firewall management (dev/staging servers, testing).

- Use **iptables** → if you need granular control, production-grade security, or advanced network configurations.