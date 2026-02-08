Burp Suite Setup Notes

Environment:
- Burp Suite Community Edition
- Browser: Firefox
- Proxy: 127.0.0.1:8080

Steps:
1. Configured browser proxy to route traffic through Burp
2. Imported Burp CA certificate into browser
3. Verified interception by loading a simple HTTP page

Common issues faced:
- HTTPS requests blocked before certificate installation and you can only see HTTP contents
- Forgetting to turn interception off causing pages to hang

Takeaway:
Burp works as a man-in-the-middle between browser and server.
Every request can be viewed, modified, or dropped.
