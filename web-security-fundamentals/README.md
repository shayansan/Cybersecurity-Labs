Web Security Fundamentals

This repository documents my hands-on learning process in web application security fundamentals, with a focus on understanding how vulnerabilities arise, how they are tested, and why they exist.

The goal of this repository is not to list definitions or payloads, but to demonstrate attacker mindset, request-level thinking, and practical interaction with real web behaviors.

Scope of this repository

This repository covers:

Core HTTP concepts from a security perspective

Session handling and access control fundamentals

Common web vulnerabilities and their root causes

Practical testing workflows using Burp Suite

Manual analysis of HTTP requests and responses

Repository structure

notes/
Contains concise conceptual notes written from an attacker perspective.
Each note focuses on why a concept matters for exploitation, not just what it is.

labs/
Contains documented vulnerability labs.
Each lab includes:

observed application behavior

testing logic and thought process

result and security impact

lessons learned

burp/
Contains notes and samples related to Burp Suite usage, including:

proxy setup

interception workflow

repeater-based testing

raw intercepted request examples

requests/
Contains raw HTTP request samples used to understand:

request structure

authentication mechanisms

cookie-based session handling

Vulnerabilities covered

Insecure Direct Object Reference (IDOR)

Cross-Site Scripting (Reflected and Stored)

SQL Injection (basic scenarios)

Tools used

Burp Suite Community Edition

Browser developer tools

Manual HTTP request analysis

Methodology

For each topic or vulnerability:

Observe how the application behaves

Identify trust assumptions made by the server

Modify requests in a controlled manner

Analyze responses and security impact

Document lessons learned

No automated scanning or payload dumping is included.

What this repository demonstrates

Understanding of HTTP as an attack surface

Ability to reason about authentication vs authorization

Practical use of interception and request replay tools

Focus on root causes instead of memorization

Disclaimer

All examples use non-sensitive, synthetic data and intentionally simplified scenarios.
This repository is for educational purposes only
