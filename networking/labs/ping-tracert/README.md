Title
Ping and Tracert basic network test

Goal
To understand basic connectivity, latency, and network path between my system and a public server.

Tools
- ping
- tracert
- Windows Command Prompt

Steps
1. Ran ping google.com to test connectivity.
2. Sent 5 ICMP echo requests using ping -n 5 google.com.
3. Traced the network path using tracert google.com.

Result
- Average latency: [28ms]
- Packet loss: [no]
- Number of hops: [9]
- Destination IP: 142.251.140.110

What I learned
- Ping measures latency and packet loss using ICMP.
- Tracert shows each hop between source and destination.
- Network paths are not always direct and can change.
