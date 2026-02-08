Repeater Tool Notes

Why Repeater is powerful:
- Send the same request multiple times with small changes
- Test server-side validation logic
- Ideal for IDOR and auth bypass testing

Typical workflow:
1. Intercept request via Proxy
2. Send to Repeater
3. Modify one parameter at a time
4. Observe differences in responses

Example use cases:
- Change user_id parameter
- Remove Authorization header
- Reuse expired session tokens

Lesson learned:
Repeater turns guessing into controlled experimentation.
