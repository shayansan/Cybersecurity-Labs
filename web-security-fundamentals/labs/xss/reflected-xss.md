Reflected XSS – Basic Scenario

Lab source:
PortSwigger Web Security Academy

Vulnerability type:
Reflected Cross-Site Scripting (XSS)

Goal:
Execute arbitrary JavaScript in the victim's browser.

Application behavior:
The application reflects user input from a URL parameter
directly into the HTML response.

Observed request:
GET /search?query=test HTTP/1.1

Observed response behavior:
The value of the query parameter appears unescaped
inside the HTML page.

Initial analysis:
- User input is reflected immediately
- No output encoding is applied
- Reflection occurs in HTML context

Testing approach:
1. Intercepted request using Burp Proxy
2. Sent request to Repeater
3. Injected simple HTML and JavaScript payloads
4. Observed execution in browser

Result:
Injected script executed successfully when the page loaded.

Why this works:
User input is trusted and rendered without sanitization.
The browser executes injected JavaScript as part of the page.

Security impact:
An attacker can:
- Steal session cookies
- Perform actions on behalf of the user
- Deliver phishing payloads

Takeaway:
Any reflected user input must be properly encoded
based on its output context.
