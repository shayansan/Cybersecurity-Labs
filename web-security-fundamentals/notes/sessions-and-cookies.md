Sessions and Cookies

What cookies do:
Store session identifiers on the client side.

What attackers care about:
- Session ID value
- Expiration
- Scope (path, domain)
- Security flags

Common mistakes:
- Predictable session IDs
- Long-lived sessions
- Missing HttpOnly or Secure flags

Security insight:
If you control the session token, you often control the account.

Personal note:
Most vulnerabilities are not about stealing passwords,
but reusing or manipulating sessions.
