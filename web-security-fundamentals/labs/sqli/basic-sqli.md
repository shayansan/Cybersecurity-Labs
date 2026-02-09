SQL Injection – Basic Scenario

Lab source:
PortSwigger Web Security Academy

Vulnerability type:
SQL Injection (SQLi)

Goal:
Manipulate backend SQL query logic using user input.

Application behavior:
The application uses user-supplied input
to construct SQL queries dynamically.

Observed request:
GET /products?category=tech HTTP/1.1

Observed behavior:
The response content changes depending on the category parameter.

Initial analysis:
- Input appears to influence database query
- No visible input validation
- Error messages suggest backend SQL processing

Testing approach:
1. Intercepted request using Burp Proxy
2. Sent request to Repeater
3. Modified category parameter incrementally
4. Observed response length and content changes

Result:
Certain inputs altered the logic of the SQL query,causing unintended data to be returned.

Why this works:
User input is concatenated directly into SQL queries without proper parameterization.

Security impact:
An attacker may:
- Bypass authentication
- Extract sensitive data
- Modify or delete database records

Takeaway:
Never build SQL queries using raw user input.
Parameterized queries are mandatory.
