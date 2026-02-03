* network documentation

A physical network map is a diagram that shows the real, physical layout of a network and how devices are actually connected to each other.

It focuses on hardware and physical connections, so it shows things like routers, switches, firewalls, access points, servers, racks, and end devices, along with the real cables between them such as Ethernet or fiber links.

Physical network maps are especially important for operations and troubleshooting.
If a link goes down, the map helps identify which switch port, cable, or device is involved.

From a cybersecurity point of view, physical network maps help identify critical points and risks, such as single points of failure, exposed network rooms, unsecured access points, or unmanaged switches.
They are also important for incident response, because knowing the physical layout helps teams quickly isolate a compromised device or disconnect a risky link.

security note:
If physical maps are outdated or missing, attackers may stay undetected longer because responders don’t know where devices are physically located.

A rack diagram is a detailed drawing that shows how network and server equipment is physically arranged inside a rack.

Rack diagrams are used mainly in data centers and network rooms to plan and document equipment placement.
They help engineers decide where to install new devices, make sure there is enough space, and balance power and cooling properly.

From an operations and security perspective, rack diagrams are very important.
They help prevent mistakes during maintenance, such as unplugging the wrong server or switch, and they make it faster to respond to hardware failures.

security note:
Clear rack documentation reduces human error, which is one of the most common causes of outages and security incidents.

asset management is also necessary for network.
we need to have tag on all of the devices that use any type of network in a network system.
this allows us to associate support tickets with a device make and model.

Asset management also helps track device lifecycle, ownership, warranty status, and patch level.

From a cybersecurity perspective, asset management is critical because you cannot protect what you don’t know exists.
unknown or unmanaged devices are often the easiest entry point for attackers.

IP address management, often called IPAM, is the process and system used to plan, track, assign, and manage IP addresses in a network so there are no conflicts, gaps, or confusion.

IPAM keeps a clear record of which IP ranges exist, which subnets are in use, and which specific IP addresses are assigned to which devices.

From a cybersecurity perspective, IPAM is very important for visibility and incident response.
When suspicious traffic comes from an internal IP address, IPAM helps quickly identify the device, owner, and network zone.

security note:
Good IPAM combined with logging and monitoring significantly reduces investigation time during incidents.


Security must be consistent across all nodes, since a weak or compromised node can affect the whole mesh.
For this reason, enterprise mesh networks usually use strong encryption, centralized management, and monitoring to keep the network controlled and secure.

Point-to-point mode connection is a network connection where exactly two devices are directly linked to each other and communicate only with each other over that link.

In wireless networks, point-to-point mode is usually implemented using directional antennas.
One antenna points directly at the other, creating a focused wireless bridge.

This is often used to connect two locations over long distances without cables, such as linking an office to a warehouse across a street or connecting buildings on a campus.

Infrastructure mode is the standard way most Wi-Fi networks work, where wireless devices connect through an access point instead of connecting directly to each other.

The access point is usually connected to a wired network, such as a switch or router, which allows wireless users to access internal resources like servers and printers, as well as external networks like the internet.
This makes infrastructure mode suitable for homes, offices, schools, and enterprise environments.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
logs and monitoring

Logs and monitoring in networks are about recording what is happening and continuously watching network behavior so you can detect problems, attacks, misconfigurations, and performance issues.

Routers, switches, firewalls, servers, VPN gateways, wireless controllers, and security tools all produce logs.

These logs can include things like user logins, configuration changes, interface up/down events, firewall allowed or blocked traffic, routing changes, VPN connections, and authentication results.

one of the methods to gather traffic statistics is NetFlow that is a standard collection method and there are many products and companies work on it.

In NetFlow, the probe and the collector are the two main functional roles that make flow monitoring work:
one creates the flow records, the other receives and analyzes them.

if you want to compare your network with analyzers that it works better or worse, you have to use network performance baseline that shows function of network in a normal day and you compare it later to check the network functionality.

Syslog is a standard protocol used to send log messages from network devices and systems to a central logging server for storage and analysis.

Each device acts as a syslog client and sends event messages to a syslog server.
These messages include things like login attempts, configuration changes, interface status changes, firewall blocks, routing events, and system errors.

The syslog server receives, stores, and organizes these messages so administrators and security teams can search and analyze them.

Syslog is a key source of visibility.
It helps detect attacks, policy violations, and misconfigurations by centralizing logs like failed logins, privilege changes, blocked connections, and service crashes.

SIEM is a centralized security system that collects, correlates, and analyzes logs and events from many sources to detect threats and support incident response.

It gathers data from devices and systems like firewalls, servers, endpoints, network equipment, authentication systems, and applications, then normalizes and correlates those events to find suspicious patterns.

security note:
logs are only useful if they are reviewed and retained.
time synchronization (NTP) is critical, otherwise log timelines become unreliable during investigations.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* security concepts

the first important thing in security concepts is data that transmits over the network.
this type of data usually has little protection as it travels through routers, switches, modems, or other network devices.
however, there are security controls that protect data in transit, such as firewalls, IDS/IPS, TLS, and IPsec.

we call the type of data that is stored on a storage device data at rest.
the best methods to protect this type of data are encrypting the whole disk or encrypting the database.
for example, if someone gains access to a hard drive, they will only see encrypted data and cannot understand its contents.

we can also apply separate permissions for different users to determine who can access which type of data.
access control is a critical part of protecting data at rest and preventing unauthorized access.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* security technologies

Honeypots are intentionally deployed systems or services designed to look like real, vulnerable targets in order to attract attackers and observe their behavior.

The main idea of a honeypot is deception.
It pretends to be something valuable, such as a server, a database, an SSH service, or a web application, but it is actually isolated and monitored.
Any interaction with a honeypot is suspicious by nature, because legitimate users should not be using it.

Honeypots are used to detect attacks, study attacker techniques, and gather threat intelligence.
When an attacker scans a network or tries to exploit a service and hits a honeypot, security teams can see which tools, payloads, IP addresses, and methods are being used, often before those attacks reach real systems.

There are different levels of honeypots.
Low-interaction honeypots simulate services and respond in limited ways, which is safer and easier to manage but gives less detail.
High-interaction honeypots run real systems and applications, allowing attackers to fully interact with them, which provides deep insight but requires strong isolation.

From a network design point of view, honeypots are placed where attackers are likely to look, such as exposed IP ranges, DMZs, or internal segments where no legitimate access should happen.
They are always heavily monitored, and traffic to and from them is logged and controlled.

From a cybersecurity perspective, honeypots are valuable for early warning and intelligence,
but they are not preventive controls by themselves and must be part of a broader security strategy.

A honeynet is a group of honeypots that are connected together to look like a real, complete network instead of just a single fake system.

While a honeypot usually imitates one service or one machine, a honeynet imitates an entire environment, such as a small company network with multiple servers, workstations, and services.

Honeynets are mainly used for advanced threat research and detection.
Because the network looks realistic, attackers are more likely to reveal their full toolset and methods.

Security and isolation are critical in honeynets.
They must be separated from production networks, outbound traffic must be controlled, and all activity must be logged and analyzed.
An exploit is a piece of code, technique, or method that takes advantage of a vulnerability in a system, application, or protocol to make it behave in an unintended way.

A vulnerability is the weakness, and the exploit is how that weakness is actually used.
Without an exploit, a vulnerability is just a risk; with an exploit, it becomes an active threat.

Exploits can be used to crash systems, steal data, bypass authentication, or gain control of a machine.
They can target operating systems, network services, web applications, browsers, or network protocols.

Some exploits are proof-of-concept, showing that a vulnerability exists.
Others are fully weaponized and used in real attacks, often inside malware, exploit kits, or phishing campaigns.

From a cybersecurity perspective, exploits are often the step that turns access into compromise.
This is why patching, intrusion detection, logging, and monitoring are critical defenses.
The CIA triad is a fundamental security model that describes the three main goals of cybersecurity:
confidentiality, integrity, and availability.

Confidentiality means making sure that information is only accessible to authorized users and systems.
Examples include encryption, access controls, authentication, and network segmentation.

Integrity means ensuring that data is accurate and has not been altered without authorization.
Techniques such as hashing, digital signatures, checksums, and change control help protect integrity.

Availability means ensuring that systems and data are accessible when needed.
It is protected through redundancy, backups, load balancing, monitoring, and protection against denial-of-service attacks.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*denial of service

A DDoS (Distributed Denial of Service) attack is an attack where many systems are used together to overwhelm a target with traffic or requests.

The goal is not to steal data, but to make a service unavailable by exhausting bandwidth, CPU, memory, or application resources.

Traffic usually comes from many sources such as botnets, compromised servers, IoT devices, or abused public services.
This makes DDoS attacks harder to block.

Amplification is a technique used to increase attack strength.
The attacker sends small requests that cause large responses to be sent to the victim.

DNS amplification is a common example.
The attacker sends small DNS queries while spoofing the victim’s IP address.
DNS servers then send large responses to the victim.

This hides the attacker’s real location and creates massive traffic volumes.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* mac flooding

A MAC address is a Layer 2 identifier used inside local networks.
Switches learn MAC addresses dynamically and store them in a MAC (CAM) table.

MAC flooding is an attack where an attacker sends many frames with fake source MAC addresses to overflow the MAC table.

When the table is full, some switches start flooding traffic out of all ports, behaving like a hub.
This allows attackers to capture traffic not intended for them.

MAC addresses are scoped by VLANs, and switches maintain separate MAC tables per VLAN.
Breaking VLAN isolation exposes MAC-level information across segments.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* ARP and DNS spoofing

ARP spoofing targets the Address Resolution Protocol.
ARP trusts replies without authentication, making it vulnerable.

In an ARP spoofing attack, the attacker sends forged ARP replies to victims and routers,
placing themselves in the middle of the communication.

DNS spoofing targets name-to-IP resolution.
Attackers provide fake DNS responses to redirect traffic to malicious servers.

ARP spoofing is often used to enable DNS spoofing by creating a man-in-the-middle position.

Defenses include Dynamic ARP Inspection, VLAN segmentation, DNSSEC, encrypted DNS, and HTTPS.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* security rules for firewall

Firewall security rules define what traffic is allowed or blocked.

Rules match traffic based on source, destination, protocol, ports, and sometimes applications.

The default deny principle means blocking everything unless explicitly allowed.
This reduces attack surface.

Rules should be minimal and specific.
Firewalls process rules in order, so rule order matters.

Firewalls are used for segmentation between zones like internal networks, DMZs, and external networks.

Overly permissive rules like “allow any to any” increase risk.
Unused rules should be reviewed and removed regularly.

A screened subnet (DMZ) places public-facing systems in a buffer network between the internet and internal systems.

Traffic passes through multiple filtering points, and trust decreases as traffic moves inward.

Screened subnets reduce impact if a public server is compromised and protect internal assets.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* software tools

Wireshark is a network protocol analyzer that allows you to capture, inspect, and analyze network traffic at a very detailed level.
In cybersecurity, it is one of the most important tools because it shows you what is actually happening on the network, not what you assume is happening.

Instead of relying only on logs or configurations, Wireshark lets you see real packets as they move across the wire.

At its core, Wireshark captures packets and decodes them layer by layer.
This means you can see Ethernet headers, MAC addresses, IP addresses, transport-layer information like TCP or UDP ports, and even application-layer data such as HTTP, DNS, or FTP.

Wireshark also plays a major role in troubleshooting encrypted versus unencrypted traffic.
While it cannot decrypt strong encryption by default, it can still provide valuable metadata such as IP addresses, ports, certificate exchanges, handshake failures, and traffic patterns.

In controlled environments, Wireshark can be configured with encryption keys to decrypt TLS traffic.
This is commonly used for testing, debugging, and learning purposes, not for bypassing security in production networks.

From an attacker’s perspective, Wireshark demonstrates why network encryption and segmentation matter.
On open or compromised networks, Wireshark can capture credentials, session cookies, and sensitive data if insecure protocols like HTTP, FTP, Telnet, or unencrypted DNS are used.

security note:
anyone with access to the network path can capture traffic.
encryption, secure protocols, and proper segmentation greatly reduce the impact of packet capture tools.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Nmap (Network Mapper) is a network scanning and reconnaissance tool used to discover hosts, services, and security characteristics on a network.

In cybersecurity, it is one of the most fundamental tools because it answers a critical question:
what is actually exposed and reachable on a target system or network?

At a high level, Nmap works by sending carefully crafted packets to a target and analyzing the responses.
Based on how a system replies, Nmap can determine whether a host is alive, which ports are open or closed, which are filtered by a firewall, and sometimes even what operating system the target is using.

Nmap can quickly scan a system to identify open ports, closed ports, and filtered ports.
From a security perspective, this helps reveal unnecessary or forgotten services that increase the attack surface.

Nmap is also widely used for service and version detection.
Instead of only showing that a port is open, Nmap can often identify what software is running behind that port and sometimes its version.

In cybersecurity assessments and penetration testing, Nmap is often one of the very first tools used.
Before exploiting anything, an attacker or tester needs visibility.
Nmap provides that visibility by revealing exposed services, firewall behavior, and network structure.

Despite its power, Nmap has limitations.
It does not automatically find vulnerabilities, and it cannot bypass strong authentication or encryption.
Its results depend heavily on scan configuration, network conditions, and firewall rules.

Misinterpreting Nmap output can lead to false assumptions.
Understanding how Nmap works is more important than memorizing commands.
