Proxy Tool Notes

What Proxy allows:
- Intercept outgoing requests before reaching server
- Inspect headers, cookies, parameters
- Observe authentication tokens in real time

Interesting observations:
- Session cookies are sent automatically by browser
- Authorization headers can be modified manually
- Client-side restrictions are visible but not enforced here

Security insight:
If a sensitive action is protected only on the client side,
Proxy interception makes bypass trivial.

Mistakes beginners make:
- Only looking at body, ignoring headers
- Not understanding which parameter controls access
