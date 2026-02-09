Stored XSS – Basic Scenario

Lab source:
PortSwigger Web Security Academy

Vulnerability type:
Stored Cross-Site Scripting (XSS)

Goal:
Persist malicious JavaScript and execute it for other users.

Application behavior:
The application stores user-submitted content and displays it to multiple users later.

Observed feature:
A comment or feedback form where input is saved server-side.

Initial analysis:
- Input is stored without sanitization
- Output is rendered for all viewers
- No user interaction required after submission

Testing approach:
1. Submitted crafted input through the form
2. Reloaded the page as the same user
3. Accessed the page as a different user
4. Observed script execution

Result:
Stored payload executed whenever the page was viewed.

Why this works:
The application fails to sanitize input before storage
and fails to encode output before rendering.

Security impact:
Stored XSS affects every user who views the page.
Impact is higher than reflected XSS.

Takeaway:
Never store raw user input without sanitization.
Never render stored data without context-aware encoding.
