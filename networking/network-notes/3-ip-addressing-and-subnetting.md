* IPV4 addressing

every device needs a unique IP address to can connect and communicate in the internet.

The subnet mask tells which part of the IP is the network part and which part is the device part. for example: Subnet mask: 255.255.255.0 (also written as /24)
that means devices inside this network are from 192.168.1.1 to 192.168.1.254

The gateway is the router IP inside your local network that can send traffic to other networks (like the internet).

the relation between them:
is the destination in my local network? it uses subnet mask for this decision and if it is, it sends directly to that device with ARP and find its MAC.
if not local send it to gateway -> it sends the traffic to the gateway and then the gateway routes it to the internet.

A loopback address is a special IP address a device uses to communicate with itself. it uses for testing and internal communication inside the same machine.
**traffic sent to the loopback never leaves the device and never goes into the network. **

we have some IP address that should not use by the other devices because they’re for future use or testing. all of the class E addresses are reserved.

A virtual IP address is an IP address that is not permanently tied to one specific physical device, but can move between devices or represent a service.

IP address is in layer 3 of OSI model and It has 4 groups of 8 bits, and any 8 bits is equal to 1 byte.

DHCP is a network service that automatically gives devices the network settings they need to communicate.
when a device connects to a network DHCP can assign IP address, subnet mask, default gateway and DNS server and DHCP avoid IP addresses conflicts and make easier to manage network.

APIPA uses when there is no DHCP and can only communicate to other local devices and can’t forward to the internet by routers. it has a range from 169.254.0.1 until 169.254.255.254

there was a problem that after increasing the devices in whole of the world we didn’t have enough IP so we decided to use private IP address that use in our own local system.

private IP address is not internet routable but can be routed internally with using NAT.

we have three ranges for private IP addresses:
1-10.0.0.0 to 10.255.255.255
2-172.16.0.0 to 172.31.255.255
3-192.168.0.0 to 192.168.255.255

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* subnetting

there are three classes for subnetting architecture that not used since 1993
class A -> 255.0.0.0
class B -> 255.255.0.0
class C -> 255.255.255.0

numbers are network portion and zeros are hosts portion

if the first number of IP address is between 0-127 it’s class A , if it’s between 128-191 class B and between 192-223 class C.

we also have class D that uses for multicast communication and doesn’t have default subnet mask but it’s first number range is 224-239

we also have class E that is reserved and its Ip range is between 240 and 255.

the construction of a subnet contains for part
1- network address
2- first usable host address
3- network broadcast address
4- last usable host address

for example, 10.74.222.11 its class A therefore its subnet is 255.0.0.0 and its network address is 10.0.0.0 and first host address is 10.0.0.1 and broadcast address is 10.255.255.255 and the last usable host address is 10.255.255.254

at the moment after 1993 we use CIDR subnetting that is a way to write IP networks using a slash notation that shows how big the network is.

example of CIDR:
 /16 = 255.255.0.0 (bigger network, more devices)
 /24 = 255.255.255.0 (common home/office LAN)

for example, 11111111.11111111.00000000.00000000 is /16 with CIDR.
another example, 11111111.11111111.11111111.11000000 is /26 with CIDR.

We subnet a network to split one big network into smaller networks so it becomes easier to manage, performs better, and is more secure.
this work has some advantages:
1- reduce broadcast traffic
2- better security and isolation
3- easier management
4- efficient IP address usage

VLSM is a subnetting method where you create multiple subnets of different sizes inside the same network, instead of making all subnets the same size.

for example, if we have one network 192.168.1.0/24 we can create a subnetting system like this:
one subnet for 100 users, one subnet for 40 users, one subnet for 10 users and one subnet for 2 devices.

small note:
in every subnet the first IP is network address and the last IP is broadcast address and we can’t use them for devices (except some special cases).

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* IPV6 addressing

we have almost 20 billion devices in whole of the world and it’s progressing but IPV4 can only support 4.29 billion. therefore, for this problem we made IPV6 that provides a larger address space. IPV4 has 32 bits while IPV6 has 128 bits. we separate them with: instead of.

we have 4 parts with 8 binary numbers in IPV4 but in IPV6 we have 8 parts with 16 binary numbers.

we can write IPV6 address in
first step -> 2601:04C3:4002:BE00:0000:0000:0000:0066
second step -> 2601:4C3:4002:BE00:0:0:0:66
third step -> 2601:4C3:4002:BE00::66

communicating between IPV4 and IPV6 is a big challenge because they can’t understand each other and it requires an alternate form of communication we have some methods for it:

Tunnel: encapsulate one protocol within another or dual stack have the option to use both IPV4 and IPV6. there is also another method that calls translate to convert IPV4 to IPV6 address.

dual-stack routing allows us to can run both IPV4 and IPV6 at the same time on the same system. for IPV4 it will be configured with IPV4 addresses and maintain its routing table and it also maintain a separate IPv6 routing table.

for translation between these two IPV we need a NAT64 to translate what is necessary for communicating and allows the system to keep communicating.

NAT64 needs DNS64 server to work well because in the first step it has to send information to DNS server to can get DNS record and then if it’s necessary it will reply back with IPv6 to system and after this it will send with NAT64 to the web server.

security note:
IPv6 is not automatically “more secure” than IPv4. it can still be attacked if it’s misconfigured.
also some networks forget to monitor IPv6 traffic, so attackers may use IPv6 to bypass old security rules if firewall/IDS are not configured for it.
