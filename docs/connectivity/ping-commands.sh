#!/bin/bash
# Ping Commands Cheat Sheet for DevOps
# Author: <Nahid Hasan>
# Date: 12.09.2025

ping google.com        # Basic connectivity test (check if host is reachable)

ping 8.8.8.8           # Test direct IP connectivity (DNS বাদ দিয়ে)

ping -c 4 google.com   # Limit number of pings (send only 4 packets)

ping -w 5 google.com   # Set timeout (stop after 5 seconds)

ping -s 1024 google.com  # Change packet size (check MTU / packet loss issues)

ping google.com        # Continuous ping (monitor host availability)

ping -i 0.5 google.com # Set interval between pings (every 0.5 sec)

ping -f google.com     # Flood ping (network performance/load test) 

ping -I eth0 google.com # Ping using a specific network interface

ping -n google.com     # Disable reverse DNS lookup (show only IP)