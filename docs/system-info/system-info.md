# System Information – `hostnamectl` & `ip addr`

System information commands are the **first step** in diagnosing any Linux server.  
As a DevOps Engineer, you must quickly verify the **system identity** and **network configuration** before debugging further.

This document covers two essential commands:

- `hostnamectl` → System hostname, OS, kernel version  
- `ip addr` → Network interfaces & IP addresses  

---

## 🔹 1. `hostnamectl`

The `hostnamectl` command provides detailed information about the system’s **hostname, OS, kernel, and virtualization**.

### ✅ Usage

hostnamectl   
### [📌 Sample Output](../images/hostnamectl.png)

```
   Static hostname: nahid-server
         Icon name: computer-vm
           Chassis: vm
        Machine ID: a3c1d7b2c9e54b32b1f8fdb7f0f3d2f6
           Boot ID: 3d0a29f09a6d4d3da7f6780f39b829de
    Virtualization: kvm
  Operating System: Ubuntu 22.04.3 LTS
            Kernel: Linux 5.15.0-83-generic
      Architecture: x86-64
```
### 🎯 Why DevOps Engineers Use This

- Identify **OS distribution & version** before deployment.

- Check **virtualization type** (VM, container, or bare-metal).

- Validate **kernel version** for compatibility with apps/tools.
## 🔹 2. ip addr

The ip addr command displays the system’s network interfaces and IP addresses.

### ✅ Usage
```
ip addr
```
### [📌 Sample Output](../images/ip_addr.png)
```
2: ens33: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 00:0c:29:36:bc:df brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.20/24 brd 192.168.1.255 scope global dynamic ens33
       valid_lft 86392sec preferred_lft 86392sec
    inet6 fe80::20c:29ff:fe36:bcdf/64 scope link 
       valid_lft forever preferred_lft forever
```
### 🎯 Why DevOps Engineers Use This

- Verify **private/public IPs** for cloud instances.

- Confirm **network interface state (UP/DOWN)**.

- Troubleshoot **IP conflicts or subnet issues**.

### 📌 Quick Reference Table

| Command       | Purpose                           | Example Use Case                        |
|---------------|-----------------------------------|-----------------------------------------|
| `hostnamectl` | Show hostname, OS, kernel, VM info| Check OS version before configuration    |
| `ip addr`     | Show IPs & interfaces             | Debug why a server is unreachable        |


✅ With just these two commands, you can confirm what system you’re on and how it connects to the network — the foundation of any DevOps troubleshooting workflow.
