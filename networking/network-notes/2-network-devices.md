* network devices

router=> A router connects different networks and decides where packets should go next (routing)

switch:
A switch connects devices in the same network:
• PC ↔ PC
• PC ↔ Server
• Printer ↔ Laptop
The switch uses MAC addresses to forward frames.

What it uses internally
MAC Address Table (CAM table)

Firewall (The Main Security Gate)

What it does
A firewall decides:
allow traffic not block traffic
Based on rules sucha s:
• Source IP
• Destination IP
• Port (80, 443, 22…)
• Protocol (TCP/UDP)
• Application signatures (next-gen firewalls)

Types of firewalls

Packet filtering firewall (basic)
Checks IP/port/protocol.

Stateful firewall (stronger)
Understands “connections” (session tracking).

Next-Generation Firewall (NGFW)
Understands apps like:
• YouTube
• Telegram
• BitTorrent
• VPN traffic

IDS and IPS (Intrusion Detection / Prevention)

IDS (Detection only)
It watches traffic and alerts:
“This looks like an attack”
Example:
• brute force attempts
• port scanning
• malware signatures
It does NOT block automatically.

IPS (Prevention)
Like IDS but it can:
block malicious traffic instantly

Security relevance
They help detect:
• exploit attempts
• known malware behavior
• suspicious payload patterns

Common issue:
False positives → may block real users if configured badly.

Load Balancer (Traffic Distributor)

What it does
Load balancer distributes incoming traffic to multiple servers:
• Server1
• Server2
• Server3
Used in:
• big websites
• cloud systems

Proxy (Middle Man for Web Traffic)

What it does
A proxy sits between user and internet:
User → Proxy → Website
It can:
• hide user IP
• log browsing
• filter websites
• scan downloads

Proxy types
• Forward proxy (used by users)
• Reverse proxy (protects servers)

NAS (Network Attached Storage) 

NAS = storage shared over a network like a file server.
• Works at file-level (shared folders)
• Uses protocols like SMB/CIFS (Windows), NFS (Linux)
• Easy to set up, common in homes/companies
Best for: file sharing, backups, media storage

SAN (Storage Area Network)

SAN = high-performance storage network for servers.
• Works at block-level (looks like a raw disk to servers)
• Uses Fibre Channel or iSCSI
• Faster, more complex, used in data centers
• Best for: databases, virtualization (VMware), enterprise systems

A Wireless LAN Controller (WLC)

A Wireless LAN Controller (WLC) is a central device/system used in companies to manage many Wi-Fi Access Points (APs) from one place

What it does (main functions)
• Controls and configures APs centrally (SSID, passwords, channels, power)
• Manages roaming (when you move, your device switches APs smoothly)
• Applies security policies (WPA2/WPA3, 802.1X authentication)
• Monitors users and AP health (who is connected, signal quality)
• Handles guest Wi-Fi portals (captive portal / login pages)

Access Point (AP) — a little more

An Access Point is a device that gives Wi-Fi access to a network.
It basically acts like a wireless bridge:
Wi-Fi devices (phones/laptops) ↔ wired network (switch/router)

What an AP does:
• Creates a Wi-Fi network (SSID)
• Connects wireless users to the LAN
• Handles wireless security like WPA2/WPA3
• Manages multiple clients at once
In companies, APs are everywhere because they cover a whole building.

Difference between an Access Point and a Modem (Very important)

Modem
Modem = connects you to the ISP (the internet provider).
• It brings internet into your home/company.
• Without a modem, you usually cannot access the internet at all.

Modem connects:
Your network ↔ ISP network

Access Point (AP)
AP = gives Wi-Fi connection inside your local network.
• It does NOT create internet by itself.
• It just lets devices join the network wirelessly.

AP connects:
Wireless devices ↔ your local network

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* routers

the routers have a relatively simple job but the underlying technology is complex. the first step is identify the destination IP address, the router has a table to choose what should it do with packets. if packets are in local routers, they will send easily to that device but if it’s not in the local network, it will forward to next router or gateway to find its path.

A router knows which next router to send a packet to by using its routing table. a router table contains somethings like destination network, next hop IP address, outgoing interface.

So, when a router receives a packet, it checks:
destination IP → which route matches? → send to next hop.

if a router couldn’t find that what should it do with packets it will discard that packet.

sometimes static routing is a useful thing specially when you have small network or you want more secure routing. so, you can manage and administrate your router manually.

when you have a lot of routers that their management manually is too complicated you can use dynamic routing that doesn’t need manual route calculations and it’s very scalable.

for example, when we have an address that router can not see the next router send this address as an update for before router table and that router can find that way after updating.

there is a protocol for dynamic routing first it will listen for subnet information from other routers and after that in the second step it will provide subnet information for other routers and after that in the third step it interprets information and determine the best path for routing. and after this if any network changes occur the updates will be available for routers.

EIGRP is a dynamic routing protocol used inside a network (an IGP) to automatically share routes between routers and choose the best path.
this protocol helps routers learn which networks exist or how to reach them or which path is the best and it is mainly associated with Cisco environments. this protocol cleanly manages topology changes and speed of convergence is always a concern.

OSPF is a dynamic routing protocol used inside organizations to automatically share routes between routers and choose the fastest path using link-state information. this protocol is based on the connectivity between routers.

BGP is a routing protocol used between large networks (autonomous systems) on the internet to exchange routes and choose the best path based on policies instead of only shortest distance. this protocol uses port TCP with number 179.

A sub interface is a virtual interface created on a physical router or switch interface to allow that one physical port to handle multiple separate networks, usually using VLAN tagging.
how it works? one physical interface connect -> multiple sub interfaces connect to that physical -> each sub interface is linked to a VLAN ID and has its own IP address

Router-on-a-stick -> A router uses sub interfaces to route between VLANs when there is only one physical link to a switch.

security note:
Routers are a common target because if attacker controls routing, they can do MITM, redirect traffic, or cause outage.
so router management should be protected with strong passwords, MFA, and management access should be limited (for example only from admin VLAN).

