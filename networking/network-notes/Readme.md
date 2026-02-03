# Network Notes for Cybersecurity

These notes are written to build a strong and practical understanding of computer networking
from a cybersecurity perspective.

The goal of this repository is not just to explain how networks work,
but to understand how they are designed, how traffic flows,
where security problems happen,
and how attackers abuse network weaknesses.

These notes are based on learning sessions and videos
and are written in a simple, direct way for long-term reference.

------------------------------------------------------------

## What this repository covers

This repository covers networking concepts that are essential for:

- cybersecurity students
- network security beginners
- SOC analysts
- blue team / defensive roles
- anyone preparing for security certifications or hands-on labs

Topics include both technical foundations and security viewpoints.

------------------------------------------------------------

## Main topics inside this repository

### 1. Network fundamentals
- OSI model
- network communication types (unicast, multicast, broadcast)
- Ethernet basics
- network topologies
- traffic flow concepts

### 2. Network devices and architecture
- routers, switches, firewalls
- IDS / IPS
- load balancers, proxies
- access points and wireless controllers
- enterprise network architectures
- north-south vs east-west traffic

### 3. IP addressing and subnetting
- IPv4 addressing
- private vs public IPs
- subnet masks and CIDR
- subnetting and VLSM
- gateways and routing decisions
- IPv6 basics and transition mechanisms

### 4. Switching, VLANs, and Layer 2
- VLANs and trunking
- native and default VLANs
- Layer 3 switches
- MTU, fragmentation, jumbo frames
- spanning tree protocol (STP)
- Layer 2 attacks like MAC flooding

### 5. Routing and WAN technologies
- static and dynamic routing
- routing tables and next-hop logic
- EIGRP, OSPF, and BGP (conceptual level)
- VXLAN and data center networking
- SDN and SD-WAN concepts

### 6. Wireless networking
- infrastructure mode vs ad-hoc (IBSS)
- SSID, BSSID, ESSID
- captive portals
- directional vs omnidirectional antennas
- wireless mesh networks
- point-to-point wireless links

### 7. Core network services
- DHCP and DHCP relay
- DNS architecture and behavior
- SNMP monitoring
- SLAAC and IPv6 neighbor discovery

### 8. Logs, monitoring, and visibility
- logging fundamentals
- syslog
- NetFlow
- performance baselining
- SIEM concepts
- importance of time synchronization (NTP)

### 9. Network security concepts
- data in transit vs data at rest
- encryption basics (TLS, IPsec)
- access control
- CIA triad (confidentiality, integrity, availability)

### 10. Network attacks
- denial of service and DDoS
- DNS amplification
- MAC flooding
- ARP spoofing
- DNS spoofing
- man-in-the-middle concepts

### 11. Security controls and defense
- firewall rules and policies
- default deny principle
- segmentation and zones
- screened subnets (DMZ)
- IDS / IPS behavior
- honeypots and honeynets

### 12. VPN and secure tunneling
- client-to-site VPN
- site-to-site VPN
- clientless VPN
- IPsec, GRE, tunnel vs transport mode

### 13. Cloud and automation
- cloud deployment models
- IaaS, PaaS, SaaS
- infrastructure as code
- automation and playbooks
- source control importance

### 14. Documentation and operations
- physical network maps
- rack diagrams
- asset management
- IP address management (IPAM)
- importance of accurate documentation

### 15. Security tools
- Wireshark (packet analysis mindset)
- Nmap (network visibility and reconnaissance)
- defender and attacker perspectives

------------------------------------------------------------

## How to use these notes

- These notes are not meant to be memorized.
- They are meant to be understood and referenced.
- Each topic explains both:
  how the technology works  
  and why it matters for security.

You can:
- read them in order
- jump to specific topics
- use them alongside labs and practice
- expand them with your own notes later

------------------------------------------------------------

## Security mindset

Throughout the notes, security points are added where relevant.
These explain:
- common misconfigurations
- attack paths
- defensive controls
- why something is risky or safe

The focus is on understanding behavior, not just definitions.

------------------------------------------------------------

## Final note

Networking is the foundation of cybersecurity.
If you don’t understand how traffic moves,
you can’t properly defend it or attack it.

These notes are a long-term reference
and a base for deeper learning in:
- penetration testing
- blue team operations
- SOC analysis
- network security engineering
