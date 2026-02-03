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
