HTTP Basics – Attacker Perspective

What HTTP is:
A stateless request-response protocol between client and server.

Why stateless matters:
Every request must carry all information needed for authorization.
Attackers look for missing or trust-based assumptions.

Key parts of a request:
- Method
- Path
- Headers
- Body

Security insight:
If the server trusts the client to behave correctly,
HTTP makes it easy to break that trust.

Personal note:
Understanding raw HTTP makes tools like Burp predictable instead of magical.
