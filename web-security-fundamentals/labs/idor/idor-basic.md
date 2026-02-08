IDOR – Basic Scenario

Lab source:
PortSwigger Web Security Academy

Vulnerability type:
Insecure Direct Object Reference (IDOR)

Goal:
Access data belonging to another user without authorization.

Application behavior:
The application allows logged-in users to view account details
using a user-controlled identifier in the request.

Observed request:
GET /account/details?user_id=102 HTTP/1.1

Initial analysis:
- The user is authenticated
- Access control seems to rely on user_id parameter
- No additional authorization checks are visible

Testing approach:
1. Intercepted request using Burp Proxy
2. Sent request to Repeater
3. Modified user_id parameter incrementally
4. Observed server responses

Result:
Changing user_id returned data of other users.
The server did not verify ownership of the requested resource.

Why this works:
Authentication was enforced.
Authorization was missing at object level.

Security impact:
An attacker can enumerate user IDs and access private data.

Takeaway:
Never trust user-supplied object identifiers.
Authorization must be enforced server-side for every request.
