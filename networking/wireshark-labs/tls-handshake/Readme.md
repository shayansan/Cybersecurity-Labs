Title
TLS Handshake Analysis using Wireshark

Goal
To understand how a secure HTTPS connection is established using the TLS handshake process.

Tools
- Wireshark
- Web browser

Scenario
An HTTPS connection was initiated by visiting https://example.com while capturing network traffic.

Observation
During packet capture, TLS handshake packets were observed before any encrypted application data.
The initial packet of interest was the TLS Client Hello message sent by the browser.

Analysis
The Client Hello packet contains important security-related information:
- Supported TLS versions offered by the client
- A list of supported cipher suites
- Extensions such as Server Name Indication (SNI)

The presence of SNI reveals the target domain name in plaintext, which is required by the server to select the correct TLS certificate.

After the Client Hello, the server responds with a Server Hello message selecting the TLS version and cipher suite.
Once the handshake is completed, all subsequent traffic is encrypted and shown as Application Data.

Result
- TLS handshake successfully captured
- Client Hello and Server Hello messages observed
- TLS version and cipher negotiation visible
- Application-layer data encrypted after handshake

What I learned
- HTTPS security relies on a TLS handshake before data transmission
- Encryption keys are established during the handshake phase
- Although HTTPS encrypts content, some metadata like domain name (SNI) remains visible
- TLS handshake is a critical component of secure web communication
