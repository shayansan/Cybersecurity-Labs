# 20 of the most important commands in network (linux and windows)

# 1- ping:
=> is used to check whether a target host is reachable over a network.

explanation:
It works by sending ICMP Echo Request messages to a destination and waiting for ICMP Echo Reply messages in return. If replies are received, it indicates that the host is online and that there is basic network connectivity between the source and the target.

limitation:
The main limitation of ping is that it only tests ICMP reachability, not whether actual services are available. A system may respond to ping but have all application ports closed, or it may block ICMP entirely while still being fully reachable over TCP or UDP.

on windows : it has the same name (ping) on CMD.

# 2- traceroute:
=> is used to discover the path that packets take from your system to a destination host.

explanation:
It works by sending packets with increasing time-to-live (TTL) values and listening for ICMP “time exceeded” responses from routers along the path. Each response reveals one hop, allowing traceroute to map the sequence of routers between the source and the destination and to measure the delay at each step.

limitation:
The main limitation of traceroute is that it depends on routers sending ICMP responses, which many devices block, rate-limit, or deprioritize. As a result, some hops may appear as missing or show inaccurate latency. 
Firewalls and load balancers can also obscure the real path, and different protocols (ICMP, UDP, or TCP-based traceroute) may produce different results. Traceroute shows the network path, but it does not reveal security configurations, open services, or whether the destination host itself is actually reachable at the application level.

on windows : its name is tracert on CMD.

# 3-nslookup :
=> is used to query DNS servers and retrieve DNS records for a domain name or an IP address.

explanation:
It is commonly used to resolve a hostname to an IP address, perform reverse lookups, and check specific DNS records such as A, AAAA, MX, or NS. In cybersecurity and troubleshooting, nslookup helps verify whether DNS resolution is working correctly and whether a domain is returning the expected information.

limitation : 
The main limitation of nslookup is that it provides only basic DNS information and does not validate the authenticity of DNS responses. It does not check DNSSEC by default and cannot detect whether a response has been spoofed or poisoned. The results also depend on the DNS server being queried, so different servers may return different answers.

on windows : it has the same name (nslookup) on CMD.

# 4-dig:
=> is a DNS query tool used to manually ask DNS servers for detailed information about domain names.

explanation:
It is commonly used to resolve domains to IP addresses, query specific record types (such as A, AAAA, MX, NS, TXT), and see exactly which DNS server responded and how. In cybersecurity, dig is especially useful because it shows low-level DNS details, making it easier to analyze DNS behavior, misconfigurations, and potential attacks like DNS spoofing or cache poisoning.

limitation:
The main limitation of dig is that it is a diagnostic and observation tool, not a security mechanism. It does not automatically validate DNSSEC unless explicitly configured and interpreted correctly, and it cannot tell you whether a response is malicious if it looks syntactically valid.

on windows : it's the same in window but you have to install a packet before it(ISC.BIND).

# differnces between dig and nslookup
nslookup is a simple, user-friendly tool mainly used for basic DNS troubleshooting. It is good for quickly checking whether a domain name resolves to an IP address and which DNS server is being used. Its output is relatively minimal, which makes it easier for beginners, but it hides many DNS details and offers limited control over how queries are made.

dig is a more advanced and precise tool designed for detailed DNS analysis. It shows full DNS responses, including headers, flags, query times, and authoritative information. It allows fine-grained control over query types, servers, and options, which makes it much more useful for security analysis, debugging, and auditing DNS behavior.

# 5-tcpdump:
=> is used to capture and analyze network packets in real time.

explanation:
It works by listening on a network interface and capturing packets that match given filters. tcpdump can display low-level details such as source and destination IP addresses, ports, protocols, and flags. It allows analysts to observe live traffic, troubleshoot network issues, and investigate suspicious activity directly at the packet level.

limitation:
tcpdump only shows traffic that reaches the network interface, so it cannot capture traffic that is switched away from the host or encrypted payloads in a readable form. It also requires sufficient privileges to run and produces raw output that can be difficult to interpret without strong networking knowledge.

on windows:
tcpdump is not available by default on Windows CMD. Windows users typically use alternatives like Wireshark or install tcpdump-like tools through environments such as WSL or third-party ports.

# 6-netstat:
=> is used to display active network connections, listening ports, and network statistics on a system.

explanation:
It works by querying the operating system’s networking stack and showing information about current TCP and UDP connections, open ports, associated IP addresses, and sometimes the processes using them. In cybersecurity, netstat helps identify which services are running, what ports are open, and whether there are unexpected or suspicious connections.

limitation:
netstat only shows the current state of the local system and provides no information about remote networks or blocked traffic. It cannot detect whether a connection is malicious by itself and may miss very short-lived connections. Modern systems are also gradually replacing netstat with newer tools that provide more detailed and structured output.

on windows:
It is available as netstat in Windows CMD and is commonly used with flags such as -an or -ano to display connections and associated process IDs.

#7-ifconfig:
=> is used to view and configure network interface settings on a system.

explanation:
It works by displaying information about network interfaces such as IP addresses, MAC addresses, subnet masks, and interface status (up or down). It can also be used to enable or disable interfaces and change certain network parameters. In cybersecurity, ifconfig is useful for identifying active interfaces, assigned addresses, and basic network configuration during reconnaissance or troubleshooting.

limitation:
ifconfig provides only local interface information and does not show active connections or traffic. It is deprecated on many modern Linux systems and replaced by the ip command, which offers more complete and consistent networking features.

on windows:
ifconfig is not available on Windows CMD. The Windows equivalent command is ipconfi

# 7-arp:
=> is used to view and manage the ARP (Address Resolution Protocol) table on a system.

explanation:
It works by displaying the current mappings between IP addresses and MAC addresses that the system has learned through ARP. The command can also be used to add, delete, or modify ARP entries. In cybersecurity, arp is useful for detecting suspicious ARP entries, identifying possible ARP spoofing, and understanding how a system resolves local network addresses.

limitation:
arp only shows the local ARP cache and does not actively monitor or prevent ARP spoofing attacks. The information can change quickly, and legitimate ARP entries may be replaced by malicious ones without obvious signs. By itself, arp cannot confirm whether a mapping is trustworthy.

on windows:
It is available as arp in Windows CMD and is commonly used with options like arp -a to display the ARP table.

# 8-route:
=> is used to view and modify the IP routing table of a system.

explanation:
It works by displaying the routes that determine how packets are forwarded to different networks. The routing table defines gateways, destination networks, and interfaces. In cybersecurity, route helps understand traffic paths, detect suspicious routing changes, and troubleshoot connectivity or redirection issues.

limitation:
route only shows routing decisions on the local system and does not reveal how routers or external networks forward traffic. Incorrect changes can disrupt connectivity, and the command does not validate whether routes are secure or malicious.

on windows:
It is available as route in Windows CMD (for example, route print).

# 9-ipconfig:
=> is used to display and manage IP configuration on a Windows system.

explanation:
It shows information such as IP address, subnet mask, default gateway, and DNS servers. It can also be used to release and renew DHCP leases. In cybersecurity, ipconfig helps verify network configuration and detect misconfigurations or rogue DNS settings.

limitation:
ipconfig provides only local configuration information and does not show active connections or traffic. It cannot detect attacks or unauthorized access by itself.

on windows:
It is available as ipconfig in Windows CMD.

# 10-ip:
=> is used to configure and monitor network interfaces, routing, and addresses on Linux systems.

explanation:
It replaces older tools like ifconfig and route by providing a unified interface for managing IP addresses, routes, and network states. In cybersecurity, ip is useful for inspecting interfaces, routes, and network namespaces during analysis or incident response.

limitation:
ip only affects and shows local system networking. It has a steeper learning curve than older commands and does not analyze traffic or detect attacks.

on windows:
Not available on Windows CMD.

# 11-ss:
=> is used to display detailed information about network sockets.

explanation:
It shows active TCP and UDP connections, listening ports, and socket states more efficiently than netstat. In cybersecurity, ss is useful for identifying suspicious connections and understanding real-time socket activity.

limitation:
ss only shows current socket information and does not provide historical data or traffic content. It also cannot determine whether a connection is malicious on its own.

on windows:
Not available on Windows CMD.

# 12-nmap:
=> is used to discover hosts, open ports, and services on a network.

explanation:
It works by sending crafted packets to targets and analyzing responses to identify open ports, running services, and sometimes operating systems. In cybersecurity, nmap is a core reconnaissance and auditing tool.

limitation:
nmap results depend on firewall rules and network conditions. It does not exploit vulnerabilities by itself and may produce false positives or incomplete results.

on windows:
Available on Windows, but must be installed separately.

# 13-curl:
=> is used to send and receive data using URLs.

explanation:
It supports many protocols such as HTTP, HTTPS, FTP, and DNS-over-HTTPS. In cybersecurity, curl is often used to test web services, APIs, headers, and authentication mechanisms.

limitation:
curl does not analyze vulnerabilities automatically and only shows responses to the requests you send. Misuse can expose credentials if not handled carefully.

on windows:
Available by default in modern Windows versions.

# 14-wget:
=> is used to download files from the network.

explanation:
It retrieves content over HTTP, HTTPS, and FTP and is commonly used for automated downloads and mirroring. In cybersecurity, wget is useful for testing file exposure and downloading payloads or logs.

limitation:
wget is not interactive and does not inspect traffic or security properties beyond basic protocol support.

on windows:
Not available by default; requires installation.

# 15-wireshark:
=> is used to capture and analyze network traffic in detail.

explanation:
It captures packets and decodes them across all OSI layers, allowing deep inspection of protocols and data. In cybersecurity, Wireshark is essential for traffic analysis, attack detection, and incident investigation.

limitation:
Wireshark cannot easily analyze encrypted payloads and only sees traffic visible to the capture interface. It also requires strong networking knowledge.

on windows:
Available on Windows; must be installed separately.

# 16-iptables:
=> is used to configure firewall rules on Linux systems.

explanation:
It controls how packets are filtered, forwarded, or blocked based on rules. In cybersecurity, iptables is fundamental for enforcing network security policies and segmentation.

limitation:
iptables configuration can be complex and error-prone. Incorrect rules may lock out legitimate traffic or weaken security.

on windows:
Not available on Windows CMD.

# 17-firewall-cmd:
=> is used to manage firewall rules on Linux systems using firewalld.

explanation:
It provides a higher-level interface for managing firewall zones and services. In cybersecurity, it simplifies firewall management while enforcing access control.

limitation:
firewall-cmd depends on firewalld and abstracts some low-level control, which may limit fine-grained customization.

on windows:
Not available on Windows CMD.

# 18-host:
=> is used to perform simple DNS lookups.

explanation:
It resolves domain names to IP addresses and queries basic DNS records. In cybersecurity, host is useful for quick DNS checks during reconnaissance.

limitation:
host provides limited output compared to dig and lacks advanced DNS analysis features.

on windows:
Not available by default.

# 19-mtr:
=> is used to combine ping and traceroute functionality.

explanation:
It continuously sends probes and displays latency and packet loss per hop in real time. In cybersecurity, mtr is useful for detecting unstable routes or intermittent network issues.

limitation:
mtr relies on ICMP or UDP responses, which may be blocked, leading to incomplete results.

on windows:
Not available by default.

# 20-telnet:
=> is used to test connectivity to remote services.

explanation:
It establishes a plain-text connection to a remote host and port. In cybersecurity, telnet is often used to test whether a port is open and responding.

limitation:
telnet is insecure because it transmits data in clear text and should not be used for authentication or sensitive communication.

on windows:
Available in Windows CMD but may need to be enabled.
