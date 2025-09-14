# 🔍 DNS & Network Deep Dive

This guide covers four essential network troubleshooting tools every DevOps / SysAdmin should know:

- `nslookup` → Basic DNS query tool

- `dig` → Advanced DNS lookup & debugging

- `host` → Lightweight DNS lookup utility

- `telnet` → Port connectivity tester

## 1. nslookup

`nslookup` is used for querying DNS records.

**Basic usage**:
```
nslookup example.com
```
Returns the IP address of the domain.

**Query with a specific DNS server:**
```
nslookup example.com 8.8.8.8
```
Uses Google Public DNS (8.8.8.8) for the query.

## 2. dig

`dig` (Domain Information Groper) is the most powerful DNS troubleshooting tool.

**Basic lookup:**
```
dig example.com
```
Shows A record (IPv4 address).

**Check MX record (Mail server):**
```
dig example.com MX
```
**Check NS record (Name servers):**
```
dig example.com NS
```
**Use a specific DNS server:**
```
dig @8.8.8.8 example.com
```
**Short output (just the IP):**
```
dig +short example.com
```
## 3. host

`host` is a simple and lightweight DNS lookup tool.

**Find IP address of a domain:**
```
host example.com
```
**Query specific record types:**
```
host -t MX example.com
host -t TXT example.com
```

`-t` specifies the record type.

## 4. telnet

`telnet` is used to check if a host and port are accessible.

**Syntax:**
```
telnet <hostname> <port>
```
**Examples:**
```
telnet example.com 80
```
Tests HTTP port connectivity.
```
telnet smtp.example.com 25
```
Tests SMTP mail server port.
## Comparison Table
| Tool     | Primary Use                  | Strengths                     | Example                  |
| -------- | ---------------------------- | ----------------------------- | ------------------------ |
| nslookup | DNS resolve (basic)          | Simple, widely available      | `nslookup example.com`   |
| dig      | Advanced DNS troubleshooting | Detailed, flexible            | `dig example.com MX`     |
| host     | Lightweight DNS lookup       | Quick, short output           | `host example.com`       |
| telnet   | Port connectivity testing    | Check firewall / service port | `telnet example.com 443` |


## DevOps Use Cases

**1. DNS debugging** → `dig`, `host`

**2. Check domain resolution** → `nslookup`, `dig` +`short`

**3. Email troubleshooting** → `dig MX`, `telnet port 25`

**4 Firewall/port checks** → `telnet <host> <port>`

**5 Load balancer/DNS resolution** → `dig CNAME`, `dig A`

This README provides a quick yet powerful reference for DNS & network troubleshooting in DevOps workflows.