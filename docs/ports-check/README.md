# Ports Check → netstat, ss
## Overview

When troubleshooting connectivity or monitoring services, DevOps engineers need to **check open ports, active connections, and listening services.** Two popular Linux tools for this are:

- **netstat** → Older tool, widely available, but deprecated in newer distributions.

- **ss** → Modern replacement for netstat, faster and more detailed.

## 🔹 Using netstat
```
# Show all listening ports
netstat -tuln  

# Show listening ports with process details
netstat -tulpn  

# Show all active TCP connections
netstat -ant  

# Show statistics for each protocol
netstat -s  
```

✅ Use Case: Quick checks on legacy systems, compatibility with older scripts.

## 🔹 Using ss
```
# Show all listening ports
ss -tuln  

# Show listening ports with process info
ss -tulpn  

# Show all active TCP connections
ss -ant  

# Show summary statistics
ss -s  
```

✅ Use Case: Faster, modern, more detailed output. Preferred on new systems.
## netstat vs ss

| Feature            | netstat (old) | ss (modern)                  |
|--------------------|---------------|------------------------------|
| Speed              | Slower        | Much faster                  |
| Availability       | Legacy tool   | Default in new Linux distros |
| Protocol support   | Good          | Better & more detailed       |
| Use in scripts     | Still common  | Recommended going forward    |


## Summary

- Use `netstat` if working on older servers or scripts that already depend on it.

- Use `ss` for modern Linux systems—it’s faster, more reliable, and gives richer output.