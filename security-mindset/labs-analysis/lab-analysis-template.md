# Lab Analysis Template

## 1. Lab Overview
Briefly describe the environment being analyzed.

- Type of application:
- Purpose of the lab:
- What kind of system is being observed (web app, service, mixed environment):

This section should explain context, not results.

---

## 2. Initial Assumptions
Before interacting deeply, document what you expected to see.

- Expected architecture:
- Expected user flow:
- Expected interaction points:

This helps compare assumptions with reality later.

---

## 3. Identified Interaction Points
List where the user can interact with the system.

- Input fields:
- Navigation-triggered requests:
- State-changing actions:
- Any observable parameters:

Focus on behavior, not tools.

---

## 4. Observed Inputs and Outputs
For each interaction, describe:

- What data the user provides
- How the system responds
- Whether the response is direct, indirect, or hidden

Do not attempt exploitation. Just observe behavior.

---

## 5. Authentication and Access Behavior (If Applicable)
If authentication exists, describe:

- What changes before and after login
- Which resources appear restricted
- How identity affects available actions

---

## 6. Notable Behaviors or Deviations
Document anything that differs from common expectations.

Examples:
- Disabled features
- Missing functionality
- Silent parameter handling
- Unexpected redirects

These observations are often more valuable than obvious flaws.

---

## 7. Sensitivity Assessment
Mentally categorize areas by importance.

- Low sensitivity:
- Medium sensitivity:
- High sensitivity:

Base this on data impact, not technical difficulty.

---

## 8. Key Insight Gained
Write the most important conceptual lesson learned from this lab.

This should describe a shift in understanding, not a technical trick.

---

## 9. Questions for Further Investigation
List open questions rather than forcing conclusions.

- What is still unclear?
- What would require deeper analysis?
- Which assumptions need verification?

---

## 10. Mental Conclusion
Summarize what this lab contributed to your understanding of system behavior and reconnaissance methodology.

Avoid mentioning tools unless absolutely necessary.
