Authentication vs Authorization

Authentication:
Who are you?

Authorization:
What are you allowed to do?

Why confusion is dangerous:
Apps often authenticate correctly but authorize poorly.

Attack pattern:
- Log in as normal user
- Access admin-only endpoint
- Server checks login, not role

Security insight:
Authorization must be checked on every request,
not just at login.

Personal note:
Most IDOR bugs live here.
