XSS – Lessons Learned

- XSS is a client-side vulnerability with server-side roots
- Output encoding is more important than input filtering
- Stored XSS has higher impact than reflected XSS
- Context matters: HTML, attribute, JavaScript, URL

Attacker mindset:
If my input comes back to me, I will try to make it execute.

Defensive note:
Treat all user input as untrusted,
and encode it exactly where it is rendered.
