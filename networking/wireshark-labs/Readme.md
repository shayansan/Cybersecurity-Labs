Wireshark Labs

This section contains hands-on network traffic analysis labs performed using Wireshark.
The purpose of these labs is to move beyond basic protocol usage and focus on understanding
how network communication actually works at the packet level.

Each lab in this directory analyzes real network traffic to explain core networking
and security concepts such as connection establishment, name resolution, and encryption.

Objectives
- Understand how common network protocols behave on the wire
- Analyze protocol handshakes and message flows
- Identify what data is visible and what is protected
- Develop packet-level analysis skills used in cybersecurity

Lab Overview
- TCP Handshake Analysis  
  Observes the TCP 3-way handshake (SYN, SYN-ACK, ACK) and explains how reliable connections are established.

- DNS Traffic Analysis  
  Examines DNS queries and responses to understand how domain names are resolved and why DNS traffic can be monitored.

- TLS Handshake Analysis  
  Analyzes the TLS handshake process used in HTTPS connections and explains how encryption is negotiated.

Methodology
Each lab follows a consistent structure:
- Generate controlled network traffic
- Capture packets using Wireshark
- Apply focused display filters
- Analyze packet fields and protocol behavior
- Document observations and security implications

Learning Outcome
After completing these labs, the reader should be able to:
- Read and interpret Wireshark packet captures
- Understand how network protocols operate at different layers
- Recognize security strengths and limitations of common protocols
- Apply traffic analysis skills in security monitoring and troubleshooting
