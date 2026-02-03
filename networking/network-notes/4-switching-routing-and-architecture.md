* network architecture

Three-tier distribution is a traditional enterprise network design that organizes the network into three layers to make it scalable, manageable, and reliable.

core -> the central point of all of our resources such as servers, applications, databases and other important points are all contained in core network.

distribution-> the midpoint between the core and the users; its main role is routing between VLANs and enforcing policies and controlling which networks can talk to each other.

access -> where the users connect and provides network access to users and applies basic controls like VLAN and port security.

we have collapsed core that core and distribution layer combined together and we just have two-tier model. and their difference with three-tier is it’s simpler to design and support and cheaper.

In networking (especially in data centers and cloud), traffic flows are described by direction:

North-South traffic:
Meaning: traffic going in and out of a network  
• North = outside networks (internet, external users)  
• South = inside networks (your servers/apps)  
Why it matters in cybersecurity? Usually protected by perimeter devices like firewalls, WAF, DDoS protection and focus are on controlling external access.

East-West traffic
Meaning: traffic moving inside the network between internal systems  
Why it matters in cybersecurity? Most lateral movement happens here after an attacker gets inside and needs segmentation, internal firewalls, and monitoring

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* NAT

NAT -> is a function usually done by routers or firewalls that changes IP addresses in packets, and its main purpose is to let private internal devices communicate with external networks.

The most common situation is in home networks where many devices use private IPv4 addresses such as 192.168.1.10 or 10.0.0.25, but the ISP gives you only one public IP, so NAT allows all those internal devices to share that single public IP when they access websites, apps, or cloud services.

NAT works by rewriting the source IP address and then keeping a translation record. When the reply comes back from the internet, the router uses that record to know exactly which internal device should receive it.

PAT: Here the router not only changes the source IP but also changes the source port so that many internal connections can exist at the same time using one public IP, and it tracks them using a NAT table that maps inside local IP:port to inside global public IP:port.

security note:
NAT is not a security control by itself, but it hides internal IPs from direct access from the internet.
real security still needs firewall rules, patching, and proper segmentation.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* VLANs and trunking

LAN-> they’re a group of devices that are in a limited physical area like home or office in the same broadcast domain. In a LAN, devices usually share the same local IP range and can easily reach each other depending on the security rules.
The main purpose of a LAN is to let local devices share resources like printers, files, servers, and internet access.

VLAN is a way to split one physical LAN into multiple separate logical networks. It is called “virtual” because the separation is done by configuration on switches, not by physically building separate networks with different switches and cables.

The biggest reason VLANs are used is segmentation, which improves security and organization.
For example, a company can create separate VLANs for employees, guests, servers, IP cameras and…
so, if one network is attacked or infected, the attacker cannot easily reach everything else.

Default VLAN is basically the VLAN that a switch uses automatically when you first plug it in and don’t configure anything and on the most of the switches this is VLAN 1.

Native VLAN is something different and it only matters on trunk links, meaning the links that carry multiple VLANs between switches, or between a switch and a router.

A Layer 3 switch is basically a normal switch that can also do routing, meaning it can forward traffic not only by MAC addresses (Layer 2) but also by IP addresses (Layer 3). It’s commonly used in companies to route between VLANs quickly inside the network without needing a separate router for inter-VLAN routing.

The main reason fragmentation exists is something called MTU (Maximum Transmission Unit), which is the largest packet size a network link can carry in one piece.
For example, Ethernet commonly has an MTU of 1500 bytes, so if a device tries to send an IP packet bigger than what the next network can handle, that packet cannot pass in its original size.

In that situation there are only two choices: either the packet gets dropped and the communication fails, or the packet is split into smaller pieces so it can fit through the network.

Fragmentation is the method that splits the packet into smaller fragments, sends them separately, and then the receiver reassembles them back into the original packet.

Also, modern networks try to avoid fragmentation as much as possible using a better method called Path MTU Discovery, where devices learn the best packet size to use so packets do not need to be fragmented in the first place, but fragmentation still exists as a fallback so traffic can still work when MTU issues happen.

Jumbo frames are Ethernet frames that are larger than the normal standard size, used to send more data in each frame and improve performance in fast networks.
Normally, Ethernet MTU is 1500 bytes, but jumbo frames use a bigger MTU, commonly around 9000 bytes (it can vary depending on the equipment).

The main benefit of jumbo frames is that they reduce overhead, because sending one large frame is more efficient than sending many small frames, so it can improve throughput and reduce CPU usage on servers and switches.

security note:
VLANs improve security but they don’t fully block attacks by themselves.
if trunk ports are misconfigured attackers may do VLAN hopping, so trunk ports should be limited and not used for normal user devices.
also guest VLAN should be separated from internal systems.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* spanning tree protocol

Loop protection is the set of mechanisms used to stop Layer 2 loops from happening, because loops in a switched network can create broadcast storms, duplicate frames, and can crash the whole LAN.

The basic idea of STP is that when switches are connected with multiple redundant links, STP detects the possible loop paths and blocks some ports so that only one logical forwarding path remains active, while the backup links stay ready in case the main link fails.

STP does this by using BPDUs (Bridge Protocol Data Units), which are small control messages that switches send to each other to decide which switch should be the root bridge and which ports should be forwarding or blocking

So in short, loop protection in STP is not just blocking ports, it is the full set of STP decisions plus extra safety features like BPDU Guard, Root Guard, and Loop Guard that prevent both accidental and malicious Layer 2 loops.

security note:
STP can be abused by attackers if they plug a rogue switch and try to become the root bridge.
that’s why features like BPDU Guard and Root Guard are important in enterprise networks.
