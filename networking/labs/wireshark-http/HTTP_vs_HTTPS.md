Title
HTTP vs HTTPS – Practical Comparison Using Wireshark

Introduction
HTTP and HTTPS are protocols used for web communication. Although they serve the same purpose, they differ significantly in terms of security. This comparison is based on real packet captures observed using Wireshark.

HTTP Overview
HTTP (Hypertext Transfer Protocol) transmits data in plain text. During packet capture, all request and response details are visible to anyone who can sniff the network traffic.

Observed in Wireshark (HTTP):
- HTTP GET requests visible
- Host header readable
- User-Agent readable
- Cookies transmitted in plain text
- Full URLs visible

Security Implications of HTTP:
- Sensitive data can be intercepted
- Cookies can be stolen (session hijacking)
- User activity can be monitored
- No confidentiality or integrity protection

HTTPS Overview
HTTPS is HTTP over TLS (Transport Layer Security). It encrypts application-layer data, protecting it from network sniffing.

Observed in Wireshark (HTTPS):
- No readable HTTP GET requests
- Headers are encrypted
- Cookies are not visible
- Payload appears as encrypted Application Data
- TLS handshake is visible

What Is Still Visible in HTTPS:
- Destination IP address
- Destination port (443)
- TLS version (e.g., TLS 1.2 / TLS 1.3)
- Server Name Indication (SNI)
- Packet size and timing

Security Benefits of HTTPS:
- Confidentiality through encryption
- Protection against eavesdropping
- Prevention of session hijacking
- Data integrity and authentication

Conclusion
Wireshark analysis clearly shows that HTTP traffic is fully readable, while HTTPS encrypts application-layer data. HTTPS significantly improves security by protecting sensitive information, although some metadata remains visible at the network level.

This practical comparison demonstrates why HTTPS is essential for secure web communication.
