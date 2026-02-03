* common ports

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

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* SNMP

SNMP is a protocol used to monitor and manage network devices remotely, such as routers, switches, firewalls, servers, and printers.

Its main job is to let a central monitoring system read status information from devices and sometimes change certain settings.
Instead of logging into every device one by one, an admin can use SNMP to collect health and performance data from all devices in one place.

The SNMP manager is the monitoring system, and the SNMP agent is a small service running on each network device.
The agent collects local data like interface traffic, CPU load, memory usage, link status, and error counters, and the manager queries or receives this data.

The data in SNMP is organized as OIDs (object identifiers) inside a structure called the MIB (management information base).
Each measurable value, like interface bytes in or device temperature, has its own OID, so monitoring tools know exactly what to request and read.

SNMP can also send alerts using traps or informs.
Instead of waiting to be asked, a device can automatically send a message to the manager when something important happens, like an interface going down or a power supply failing.

there are different versions of SNMP:
SNMPv1 and SNMPv2c use community strings like passwords but they are sent in plaintext.
SNMPv3 adds authentication and encryption and is the recommended secure version.

From a cybersecurity point of view, SNMP must be configured carefully.
Weak community strings or exposed SNMP services can let attackers read network details or change configurations.

security note:
default community strings like “public” and “private” should always be changed and SNMP access should be limited by IP address.
if possible use SNMPv3 instead of v1/v2c because it supports encryption and secure authentication.

security note:
Infrastructure mode is more secure and manageable than ad-hoc mode because it supports authentication, encryption, access control, and centralized monitoring.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 * DHCP

DHCP is a network service that automatically gives devices the IP settings they need to communicate on a network.

When a device like a laptop or phone connects to a network, it usually does not have an IP address yet.
DHCP automatically assigns the needed configuration so the device can start communicating without manual setup.

how DHCP works? when a device connects it follows a simple 4 step process:
1- discover -> client broadcasts asking for a DHCP server
2- offer -> server offers an available IP configuration
3- request -> client asks to use that offered IP
4- acknowledge -> server confirms and assigns it

The assigned IP is not permanent.
It is given as a lease for a certain time. The client renews the lease before it expires.

DHCP can be abused if not controlled.
A rogue DHCP server can give fake gateway or DNS settings and redirect traffic.
DHCP starvation attacks can try to consume all available IPs.

Protections include DHCP snooping on switches, network segmentation, and monitoring DHCP logs.

DHCP relay is a function that lets devices in one network (subnet/VLAN) get IP addresses from a DHCP server that is located in a different network.

Normally, DHCP uses broadcast messages when a client asks for an IP address.
Broadcast traffic does not cross routers, so a DHCP server in another subnet would not hear the request.
DHCP relay solves this problem by forwarding the request as unicast to the real DHCP server.

It allows you to keep one central DHCP server instead of running a separate DHCP server in every VLAN.
This simplifies management and logging and is very common in enterprise networks with many VLANs.

A DHCP pool is a defined range of IP addresses and related network settings that a DHCP server can assign to clients.

DHCP pools usually contains:
IP address range, subnet mask, default gateway, DNS servers, lease time.

Typically, each subnet or VLAN has its own DHCP pool.
The DHCP server chooses the correct pool based on where the request comes from (directly or via DHCP relay).

Pools should be sized correctly and monitored.
Too small causes address exhaustion, too large wastes space and reduces control.
Critical devices should usually be excluded or reserved.

there is an interesting point that DHCP keeps a list of past assignments and if you connect to a network a lot, you will probably get the same IP address again (reservation or sticky lease behavior).

DHCP gives temporary IP addresses and after passing lease time it checks whether that device is still connected or not.
with this method, it can keep free IP addresses for new devices.

there is another timer behavior:
T1 timer is used to renew with the original DHCP server (usually at 50% of lease time).
T2 timer is used to rebind with any DHCP server if the original is down (usually at 87.5% of lease time).

we have many common options for DHCP that we can use like subnet mask, domain name server, domain name and etc.
but there is a point that not all DHCP servers support every option configuration.

SLAAC is one of the main IPv6 methods that lets devices automatically create their own IPv6 address without needing a DHCP server.

In IPv6 there is no broadcast like IPv4.
Instead, it uses multicast and neighbor discovery.

Many configuration tasks that required DHCP and ARP in IPv4 are handled by ICMPv6 Neighbor Discovery messages in IPv6.

SLAAC means Stateless Address Auto Configuration.
It is a method where a device builds its own IPv6 address automatically using information announced by the local router.

When a device connects to an IPv6 network, it listens for Router Advertisement messages sent by the router.
These messages include the IPv6 network prefix and flags.

The device takes that prefix and combines it with an interface identifier (often derived from its MAC address or generated randomly) to form its full IPv6 address.
It then runs duplicate address detection to ensure no one else is using it.

Advantages of SLAAC include zero manual configuration, no DHCP dependency for addressing, and fast plug-and-play behavior.
It is widely used in IPv6 networks, especially for client devices.

security note:
SLAAC depends on router advertisements.
fake or rogue router advertisements can redirect traffic.
networks often use RA Guard and port controls on switches to block unauthorized router advertisements.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* DNS

DNS is one of the most important concepts in network and cybersecurity because it’s like a translator and hackers have a lot of ways to abuse it for their own profit.

DNS does a simple work, it translates website name to its IP address and helps us to have access to websites easier.
but it can also be dangerous because if somebody can manipulate DNS, traffic can be redirected, monitored, or blocked without any clear sign for the user.

some parts of DNS architecture are very important from a security perspective.

recursive resolvers are high-value targets because they serve many users and cache answers.
if an attacker compromises a recursive resolver, many users can be affected at the same time.

Authoritative servers are critical because if they are compromised, attackers can change DNS records and redirect all traffic for a domain to malicious servers.

Encryption is changing DNS.
Technologies like DoH (DNS over HTTPS) and DoT (DNS over TLS) encrypt DNS traffic, which protects user privacy but also reduces visibility for traditional network monitoring.

From a cybersecurity perspective, this means defenders must adapt by monitoring endpoints, DNS resolvers themselves, or using security-aware DNS services.

In incident response, DNS is often one of the first places to look.
DNS logs help answer questions like:
which domains a compromised host contacted,
when it started,
whether other systems contacted the same domains,
and whether blocking a domain will contain the threat.

One common attack is DNS spoofing or cache poisoning, where an attacker tricks a resolver into caching a fake IP address for a domain.
This can redirect users to malicious servers even when they type the correct website name.

Another major abuse is DNS tunneling, where attackers hide command-and-control traffic or data exfiltration inside DNS queries and responses, because DNS is often allowed through firewalls.

security note:
DNS filtering, DNS logging, and anomaly detection are very important defenses.
unusual domain names, very long queries, or high-frequency DNS requests can be signs of tunneling or malware activity.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* VPN

VPN is a virtual private network that makes a tunnel over the public internet and encrypts data.
VPNs usually use a component called a concentrator, often integrated into firewalls, which handles encryption and decryption of traffic.

we have some main types of VPN.

client-to-site VPN:
this type of VPN allows individual users to securely connect from their device to a company’s internal network over the internet.

In this setup, the user installs a VPN client on their laptop or phone.
When the VPN is turned on, the client creates an encrypted tunnel to the company’s VPN gateway.
All traffic that is meant for internal company resources is sent through this encrypted tunnel.

The traffic between the user and the company network is encrypted, protecting it from eavesdropping on public Wi-Fi or untrusted networks.

Authentication is also enforced, usually with usernames and passwords, certificates, or multi-factor authentication, so only authorized users can connect.

site-to-site VPN:
in this type, entire networks are connected together.
all packets sent between the two sites are encrypted and tunneled.

concentrators usually run on firewalls or dedicated VPN devices.
any packet that passes through the firewall toward the remote site is encrypted before sending and decrypted when received.

site-to-site VPN is commonly used to connect branch offices, data centers, or cloud networks together securely.

clientless VPN:
A clientless VPN allows users to access internal resources without installing a VPN client application.

Instead of a full tunnel, the user connects through a web browser, usually over HTTPS.
this is commonly used for accessing specific internal web applications or portals.

security note:
VPNs provide confidentiality, but they do not automatically make a network secure.
weak authentication, stolen credentials, or compromised endpoints can still lead to breaches.
for this reason, VPN access should be combined with MFA, device checks, and monitoring.

