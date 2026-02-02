Title
TCP 3-Way Handshake Analysis using Wireshark

Goal
To understand how a TCP connection is established before data transmission.

Tools
- Wireshark
- curl / netcat

Scenario
A TCP connection was initiated by sending an HTTP request to example.com while capturing network traffic.

Observation
Three TCP packets were observed at the start of the connection:
SYN, SYN-ACK, and ACK.

Analysis
The TCP handshake begins with a SYN packet sent by the client to request a connection.
The server replies with a SYN-ACK packet to acknowledge the request and indicate readiness.
The client completes the handshake by sending an ACK packet.

This three-step process ensures that both parties are reachable and ready to communicate.
After the handshake, application-layer data can be transmitted reliably.

Result
- TCP 3-way handshake successfully captured
- SYN, SYN-ACK, and ACK packets identified
- Sequence numbers and TCP flags observed

What I learned
- TCP connections require a handshake before data transfer
- The handshake verifies bidirectional connectivity
- TCP provides reliable, ordered communication
- Many protocols such as HTTP and HTTPS rely on TCP
