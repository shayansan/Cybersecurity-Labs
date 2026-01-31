Title
DNS resolution using nslookup and dig

Goal
To understand how domain names are resolved to IP addresses and how DNS restrictions affect resolution.

Tools
- nslookup
- dig
- Linux terminal

Steps
1. Performed DNS lookup for google.com using the system default DNS.
2. Attempted to query google.com using public DNS servers (8.8.8.8 and 1.1.1.1).
3. Used dig to verify DNS resolution and observe detailed DNS response data.

Result
- Default DNS resolver: 127.0.0.53
- Domain resolved successfully using default DNS
- Resolved IP address: 142.250.180.174
- Public DNS (8.8.8.8): Timed out
- Public DNS (1.1.1.1): Timed out
- Query time (dig): 6 ms
- TTL: 75 seconds

What I learned
- DNS resolution can succeed even when public DNS servers are blocked.
- ICMP connectivity does not imply DNS accessibility.
- DNS traffic (port 53) can be filtered independently by network policies.
- dig provides more detailed DNS information than nslookup.
