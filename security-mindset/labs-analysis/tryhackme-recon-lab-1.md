# TryHackMe Recon Lab 1 – Behavioral Analysis

## 1. Objective of the Lab
The primary objective of this lab was not exploitation, but understanding input and output behavior.

The focus was on:
- Identifying where user-controlled input exists
- Observing how the application responds to those inputs
- Evaluating how much information can be gathered through inspection tools and traffic interception
- Forming an overall impression of the application's security posture

---

## 2. Initial Assumptions
Before interacting deeply with the application, I assumed it would follow a standard e-commerce structure.

Expected features included:
- Active comment sections
- Fully functional product interaction
- Search functionality
- Login and registration flows
- Visible password recovery options

The expectation was a typical retail-style architecture with common user interaction points.

---

## 3. First Mental Step
Before focusing on tools, the first mental step was to identify all user-controlled areas.

Specifically:
- Where can a user input data?
- Where can a user trigger state changes?
- Where does the system react differently depending on user interaction?

The goal was to map interaction points before analyzing technical details.

---

## 4. Unexpected Observations
Two behaviors stood out during analysis:

1. The comment section appeared in the UI but was completely disabled.
   This suggests intentional feature restriction rather than incomplete implementation.

2. No visible password reset or recovery option was available.
   This deviates from common authentication flows in typical e-commerce platforms.

These deviations indicate a controlled or simplified access model rather than a fully public user system.

---

## 5. Observations on Parameter Manipulation
Certain URL parameters were modified during testing.

Although changing some parameters (such as identifiers) did not produce visible differences in the interface, it is incorrect to assume that no backend processing occurred.

This highlights an important lesson:

Lack of visible output change does not mean lack of backend effect.

Inputs may still be:
- Validated
- Logged
- Sanitized
- Processed internally without affecting presentation

---

## 6. Key Insight Gained
The most important insight from this lab is that visible behavior does not fully represent backend logic.

Some parameters may appear ineffective when manipulated, yet still participate in internal application logic.

Reconnaissance is therefore not about triggering dramatic responses, but about understanding how the system handles controlled input under normal conditions.

---

## 7. Mental Conclusion
This lab reinforced the importance of observing behavior rather than chasing visible anomalies.

Understanding how an application behaves when inputs are modified—even when no visible change occurs—is foundational to effective security analysis.
