# Web Security Fundamentals

This repository documents my hands-on learning process in web application security fundamentals, with a focus on understanding how vulnerabilities arise, how they are tested, and why they exist.

The goal of this repository is not to collect definitions or payloads, but to demonstrate attacker mindset, request-level analysis, and practical interaction with real web application behavior.

## Scope

This repository covers:

- Core HTTP concepts from a security perspective
- Session handling and access control fundamentals
- Common web vulnerabilities and their root causes
- Manual testing workflows using Burp Suite
- Analysis of raw HTTP requests and responses

## Repository Structure

notes/
Conceptual notes written from an attacker perspective.
Each note focuses on why a concept matters for exploitation, not just what it is.

labs/
Documented vulnerability labs.
Each lab includes:
- observed application behavior
- testing logic and reasoning
- result and security impact
- lessons learned

burp/
Notes and samples related to Burp Suite usage, including:
- proxy setup and interception flow
- repeater-based request testing
- raw intercepted request examples

requests/
Raw HTTP request samples used to understand:
- request structure
- authentication mechanisms
- cookie-based session handling

## Vulnerabilities Covered

- Insecure Direct Object Reference (IDOR)
- Cross-Site Scripting (Reflected and Stored)
- SQL Injection (basic scenarios)

## Tools Used

- Burp Suite Community Edition
- Browser developer tools
- Manual HTTP request analysis

## Methodology

For each topic or vulnerability:

1. Observe application behavior
2. Identify server-side trust assumptions
3. Modify requests in a controlled manner
4. Analyze responses and security impact
5. Document lessons learned

No automated scanning or payload dumping is included.

## What This Repository Demonstrates

- Understanding of HTTP as an attack surface
- Clear distinction between authentication and authorization
- Practical use of interception and request replay tools
- Focus on root causes instead of memorization

## Disclaimer

All examples use non-sensitive, synthetic data and intentionally simplified scenarios.
This repository is for educational purposes only.
