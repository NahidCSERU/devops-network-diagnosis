#!/bin/bash
# Traceroute Commands Cheat Sheet for DevOps
# Author: <Nahid Hasan>
# Date: 12.09.2025
traceroute google.com           # Basic trace to see all hops to the host

traceroute -n google.com        # Skip DNS resolution, show only IPs (faster)

traceroute -m 15 google.com     # Set max hops to 15 (default is 30)

traceroute -p 80 google.com     # Use TCP port 80 instead of default UDP

traceroute -T google.com        # Use TCP SYN packets (firewall-friendly)

traceroute -I google.com        # Use ICMP echo instead of UDP

traceroute -w 2 google.com      # Wait 2 seconds for each reply (timeout)

traceroute -q 2 google.com      # Send 2 probes per hop (default is 3)

traceroute -z 1 google.com      # Randomize probe interval (avoid pattern detection)

traceroute --help               # Show all options and usage
