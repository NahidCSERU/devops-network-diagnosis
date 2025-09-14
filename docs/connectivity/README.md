# Network Connectivity and Routing Test

This project demonstrates how to test **basic network connectivity** and **trace the routing path** to a destination host using Linux networking commands.

---

## 📌 Commands Used

### 1. `ping <host>`
- **Purpose**: Check if a host is reachable over the network.
- **How it works**: Sends ICMP Echo Request packets and waits for Echo Reply.
- **Common Usage**:
  ```
  ping google.com
  ```

**Example Output:**
```
PING google.com (142.250.190.14) 56(84) bytes of data.
64 bytes from lga34s10-in-f14.1e100.net (142.250.190.14): icmp_seq=1 ttl=118 time=25.2 ms
64 bytes from lga34s10-in-f14.1e100.net (142.250.190.14): icmp_seq=2 ttl=118 time=24.9 ms
```

✅ Use case: Quickly verify if a server/website is online and responding.

### 2. `traceroute <host>`

- **Purpose:** Trace the path packets take to reach a host.

- **How it works:** Sends packets with increasing TTL (Time To Live) and reports each hop along the way.

- **Common Usage:**
    ```
    traceroute google.com
    ```
    
**Example Output:**
```
traceroute to google.com (142.250.190.14), 30 hops max, 60 byte packets
 1  192.168.1.1 (192.168.1.1)  1.023 ms  0.987 ms  1.012 ms
 2  10.10.0.1 (10.10.0.1)      5.213 ms  5.456 ms  5.332 ms
 3  isp-gateway.net (203.0.113.1)  12.543 ms  12.412 ms  12.654 ms
 4  google.com (142.250.190.14)   25.218 ms  25.143 ms  25.012 ms
```

✅ Use case: Troubleshoot where network latency or connectivity issues are occurring.
## 🚀 When to Use

- Use `ping` when you want to check if a server is reachable.

- Use `traceroute` when you need to understand the path packets take and identify network bottlenecks.

## 🛠️ Requirements

- Linux / macOS terminal

- Network access

- traceroute package (install if missing):
    ```
    sudo apt install traceroute     # Debian/Ubuntu
    sudo yum install traceroute     # RHEL/CentOS
    ```



## 📖 Summary

- `ping` → **Quick connectivity check**

- `traceroute` → **Detailed route analysis**

Both tools are essential for **network diagnostics** and **troubleshooting**.