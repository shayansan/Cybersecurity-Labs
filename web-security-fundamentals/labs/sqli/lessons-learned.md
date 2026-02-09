SQL Injection – Lessons Learned

- SQLi is a server-side vulnerability
- Input validation alone is not sufficient
- Error-based behavior often leaks backend logic
- Repeater helps isolate query-controlling parameters

Attacker mindset:
If input changes the query structure,
the database becomes the attack surface.

Defensive note:
Prepared statements eliminate entire classes of SQLi attacks.
