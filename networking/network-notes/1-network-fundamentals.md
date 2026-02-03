* OSI model

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

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* network fundamentals

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

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* introduction to IP

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

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* network communication

unicast -> one of the most important ways to send information in network it sends information from one station directly to other station. search websites, emails or file transfer probably use unicast.

multicast -> it uses to deliver information from one sender to many recipients simultaneously. we can’t use multicast in a different or very large network easily because it’s specialized and must be supported by the network.

anycast is a network routing method where multiple servers share the same IP address, and your traffic is automatically sent to the nearest or best server (based on routing).
One IP address → many locations and User connects → routed to closest server.

broadcast: it uses for send information to everyone at once but there is a point that you can use broadcast only on your local network and not in global internet. and this method doesn’t use IPV6 because IPV6 uses multicast instead.

Ethernet is the most common wired networking technology used to connect devices in a LAN (Local Area Network) using cables. it defines how devices communicate at layer 1 and layer 3 by using ethernet cables, mac address, ethernet frames.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* part 8 – network transceivers

A transceiver (transmitter + receiver) is a hardware component that sends and receives network signals so devices can communicate

Where you see transceivers in networking? in Fiber connections (most common) and SFP / SFP+ / QSFP modules in switches and routers and some wireless radios also use transceivers.

SFP and SFP+ are small pluggable transceiver modules used in switches, routers, and network devices to connect them using fiber or sometimes copper.

SFP supports up to 1 GB per second and it uses for 1G fiber links between switches and connecting a switch to a router or another switch.

SFP+ Supports up to 10 Gbps and it uses for 10G uplinks between switches and high-speed connections in data centers.

QSFP is a pluggable transceiver module used for very high-speed network connections, mostly in data centers and core networks.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* network topologies

A star network is a network design where all devices connect to one central device, usually a switch (or sometimes a hub or wireless access point).
How it works? Each computer/phone/server has its own separate cable/link to the central device and all traffic between devices passes through the central device.

a mesh network is a network design that there are multiple links to the same places and it’s created because even if one the parts is failed the whole of the system can still work.
** wide area networks use mesh to can keep the connection even with failing in some parts**

A hybrid network is a network that combines two or more different network types or topologies to work together as one system.
What hybrid can mean in networking
Hybrid topology is A mix of network layouts, for example: star + mesh or star + bus

Spine-and-leaf architecture is a modern data center network design used to provide high speed, low latency, and scalable connectivity between servers and switches.
each leaf switch connects to each spine switch and vice versa. leaf switches and spine switches don’t connect to each other.

A point-to-point connection is a direct network link between exactly two devices, where traffic goes only between those two endpoints. for example, router to router link between two branches use this method.
but this method doesn’t scale well for many devices

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
