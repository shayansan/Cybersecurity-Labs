Title
Capturing HTTP traffic using Wireshark

Goal
To observe HTTP traffic and understand why HTTP is not secure.

Tools
- Wireshark
- Web browser

Steps
1. Started packet capture on the active network interface.
2. Opened http://example.com in the browser.
3. Applied HTTP display filter in Wireshark.
4. Inspected the HTTP GET request.


Result
- Captured HTTP GET request in plain text
- Destination host: amazon.it
- Request method: GET
- Protocol: HTTP/1.1
- Headers visible: Host, User-Agent, Cookie, Accept-Language


What I learned
- HTTP transmits data in plain text.
- Sensitive information like cookies can be intercepted.
- Network sniffing can reveal visited websites and user details.
- HTTPS is essential for protecting web traffic.
