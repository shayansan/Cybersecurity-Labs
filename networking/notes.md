network notes for cyber
***part 1 - OSI model ***

this model has 7 layers that we can call with this all people seem to need data processing

7=>application
6=>presentation
5=>session
4=>transportation
3=>network
2=>data link
1=>physical

layer 1=> layer that contain physical things such as fiber, cables and everything that exists in the real world.

layer 2=>handles local LAN communication by sending frames using MAC addresses through switches, enabling features like ARP and VLANs

layer3=> this layer specially uses routers and IP address to traverse in different network and totally everything about subnet mask and routing and IP problems are about this layer.

layer4=>this layer has duty to transport information during the network and use TCP and UDP protocols.

layer 5=> for sending information from one part of network to the other part we need an active session to can do this and this provides a management between devices.

layer 6=> that get data from the network and do something like character encoding and application encryption and ….. this layer combined with the next layer

layer 7=> the layer that we can see what happening in it and has some protocols like HTTPS and….

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
***part2- network devices***
router

router=> A router connects different networks and decides where packets should go next (routing)

switch

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

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
****part 3==> network fundamentals ****

content delivery network(CDN): it uses to transfer data in this part of the world to another part of the world and it’s graphically distributed.

VPN: secure private data traversing a public network and It has ability to encrypt and decrypt data during the traverse and it sometimes has firewall.

quality of service => this list has duty to prioritize something to other thing to send or keep or … in the network and it uses traffic shaping and packet shaping and you change things in its list in routers or modems.

time to live (TTL)=> this is important because we have to manage time that something have to do and we use this to close and stop a work if this time ends.
for example, sometimes routers looping happens that means router A thinks next router B is next and router B thinks that router A is next and it goes over and over. so in this case TTL will stop this loop after its time ends.

and here IP protocol has special rule because after any pass from router IP address decrease the number of TTL, and this number is 64 for Linux and MAC and 128 for WINDOWS.

DNS (Domain Name System)
Converts:
google.com → IP address

in routers TTL is with hop but in DNS TTL is with second.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**part 4=>cloud models**
we have 3 types of deployment models :
1- public => for everyone over the internet
2- private => your own virtualized local data center
3- hybrid => a mix of public and private

one type is software as a server : SaaS means you use a software application through the internet, and the provider hosts and manages everything for you (servers, updates, storage, availability).
You usually access it by:
• a web browser
• a mobile app

IaaS (Infrastructure as a Service): you rent virtual machines + networking, and you manage the OS, updates, and installed software.

PaaS (Platform as a Service): you deploy your application code, and the provider manages the servers, OS, runtime, and scaling.

Main difference: IaaS = you manage more, PaaS = provider manages more.

if we want to manage services based on which one is more on provider management it will be like this: SaaS => PaaS=>laaS

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**part 5 : introduction to IP**

what IP protocol does? transfer data from a device to another device in another part of the world

IP protocol is like a truck that contains a lot of boxes in it and that boxes are our data that have some other protocols like TCP and UDP inside them.

between client and server, we have an instruction like this:

ethernet header – IP – TCP – HTTP data – ethernet trailer

TCP: is a protocol for sending data that has reliable delivery that checks whether data sent correctly or not and if it didn’t receive well, data will send again and also receiver can send message to sender that I lost this part of data.

UDP: it’s another type of protocol for sending data and it’s connectionless because there is no rule or setting or even checking for sending data. in this type of protocol we can’t guarantee that data will receive correctly.

after receiving data at the destination now it has to find the exact place of device and it will find the exact place with using ports.

there is a list of non-ephemeral ports in server side that contains from 0 until 1023 port numbers and they’re stable for example the most important ports of web servers are 80 and 443

and on the client side there are ephemeral ports that contains ports from 1024 until 65,535 and client can use them as a temporary port.

TCP and UDP ports can be any number between 0 and 65,535. port is just a way for better finding and communication not security.

TCP and UDP port numbers are different from each other. for example, web server has 80 web server port number and email server has 143 port number both on TCP and VOIP server has port number 5004 on UDP server

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
***part 6 -common ports ***

FTP: transfer files between systems unlike other ports FTP has two port numbers TCP 20 and 21 and gives user choice for list, add, delete and ….

SSH: a way to communicate with another device that is remote. it will make an encrypted communication with port number TCP 22.

SFTP: is a more secure manner to transfer files that is encrypted in whole of the network and it has protocol number TCP 22. (SSH isn’t just for console communication)

Telnet: telecommunication network that uses TCP 23. it has similar functionality with SSH but it doesn’t have encryption and their packet can capture by other persons.

SMTP: it’s a server to transfer mails and has two port numbers first TCP/25 just transfer plaintext but TCP/587 use TLS encryption. and it also used to send mail from a device to a mail server.

**there are other protocols that used for clients to receive email IMAP and POP3**

DNS: way to transfer name to IP address and it uses UDP/53 and some large transfers may use TCP/53

DHCP: automated configuration of IP address and subnet mask and other options process and uses UDP/67 and UDP/68.
there is a dynamic list in a modem or router in places that we connect to the internet that they assign different IP addresses to different devices.

HTTP and HTTPS: they’re way to communication in the browser. if the information sent to the web server in the clear way it’s HTTP with port number TCP/80 and if it sent to the web server encrypted it’s HTTPS and its port number is TCP/443.

NTP: all the devices such as switchers, routers, firewalls servers and …. can use this protocol to synchronize themselves with time. this protocol uses UDP/123.
this protocol is so important in log files, outage details and….

SNMP (Simple Network Management Protocol) is used to monitor and manage network devices (like routers, switches, firewalls, servers) by letting admins read device status info (CPU, memory, interface traffic) and sometimes change settings remotely and it has port number UDP/161.

LDAP/ LDAPS: is a protocol that allow us to manage users and devices that use a same network and its port number is TCP/389. this protocol stores and retrieve information in a network directory.
LDAPS is a more secure protocol from LDAP and uses port number TCP/636

Syslog is a standard protocol used to send log messages from network devices and servers to a central log server.
It helps you collect logs from things like:
•	Routers / Switches
•	Firewalls
•	Linux servers
•	IDS/IPS systems
instead of checking logs on every device, everything goes to one place.
This is critical in cybersecurity for:
•	detecting attacks
•	incident investigation

database: it uses for collection of different types of information, and it’s a common method for storing and query. there is even a language for data base that is SQL and it work for retrieve and query information.

Microsoft has its own SQL server that calls MS-SQL and it uses port number TCP/1433

RDP: is a Microsoft protocol used to remotely control a Windows computer over a network, as if you are sitting in front of it. it has port number TCP/3389.
RDP is a very common attack target because if an attacker gets access, they can:
•	fully control the system
•	steal files and passwords
•	install malware/ransomware

ICMP: it’s a protocol for text messaging for network devices and it doesn’t use TCP or UDP it has its own protocol. with ICMP devices can send messages when things don’t go well like when the TTL is expired or when the IP destination is not accessible.

GRE: when we make a tunnel between for example two routers with VPNs we make this tunnel actually with GRE. it encapsulates the information of tunnel in source part and decapsulates information after arriving to the destination.

VPN: it encrypts the data while traversing during the public network. we need concentrator for encryption and decryption of data with VPN that often it integrated in firewall.

IPSec: the most popular way to encrypt data in tunnels while we use VPNs. it is a set of protocols that secure IP destination by providing encryption, integrity, authentication, anti-replay protection.
IPSEC works at layer 3 and it protects IP packets directly and that’s why it is used in site-to-site VPN and remote access VPN.

there are two main components for this protocol:
1)	AH: provides only integrity and authentication but this method is rare because it doesn’t have encryption.
2)	ESP: provides encryption and integrity and authentication and this is normal choice for real VPNs.

IKE: it’s a tunnel that must be sent before encrypted data so both sides agree on encryption and decryption of data and it builds a security association.

we have two modes in sending data with IPsec:
1)transport mode: it’s the sequence IP header – IPsec headers – data – IPsec trailers
the data is encrypted here but the IP header is not and it can be read by someone else who capture the packets.

2)tunnel mode: it’s the sequence new IP header – IPsec header – IP header – data – IPsec trailers
in tunnel mode even IP header is encrypted and it is much more secure than the other one.
