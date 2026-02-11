# TryHackMe Recon Lab 2 – Authentication and Session Behavior

## 1. Objective of the Lab
The objective of this lab was to observe how authentication state changes application behavior.

Rather than focusing on bypassing login mechanisms, the goal was to understand:

- What changes before and after authentication
- How session state influences accessible functionality
- How the system handles restricted resources

---

## 2. Pre-Analysis Assumptions
Before interacting with authentication mechanisms, the following assumptions were made:

- The application distinguishes clearly between authenticated and unauthenticated users
- Sensitive features require server-side access control
- Session state determines visibility and action permissions

The expectation was a structured role-based behavior model.

---

## 3. Initial Mental Approach
The first step was not testing credentials, but mapping state transitions.

Key mental questions included:

- What resources are visible without authentication?
- What becomes accessible after login?
- Are any endpoints accessible regardless of authentication state?

The focus was on observing behavioral differences rather than forcing access.

---

## 4. Authentication Flow Observations
During analysis, the authentication flow appeared simplified.

Notable characteristics:

- Limited visible account management options
- No obvious password recovery mechanism
- Minimal exposure of user profile management

This suggests that authentication may be tightly controlled or designed for a restricted user base rather than public onboarding.

---

## 5. Session Behavior and State Change
The most important behavioral aspect observed was state transition.

When authentication occurs:

- Additional actions become available
- Sensitive operations such as checkout or order tracking are enabled
- Backend logic begins to associate actions with a specific identity

This indicates that session state plays a central role in defining access boundaries.

---

## 6. Access Control Considerations
From a security perspective, the following areas are critical:

- Ensuring restricted pages cannot be accessed directly without authentication
- Validating user identity before allowing state-changing operations
- Maintaining session integrity during transitions such as checkout and payment

Authentication alone is not sufficient; enforcement must occur server-side.

---

## 7. Unexpected or Notable Findings
The authentication model appears intentionally minimalistic.

The absence of common features such as password recovery may indicate:

- Manual account provisioning
- Limited user base
- Simplified access lifecycle

This reduces certain attack vectors but may introduce usability trade-offs.

---

## 8. Key Insight Gained
The most important insight from this lab is that authentication is not just about login forms.

It is about:

- State transitions
- Identity binding
- Permission boundaries

Understanding these elements is essential before any deeper testing is attempted.

---

## 9. Mental Conclusion
Authentication analysis should begin with observing behavior shifts rather than attacking entry points.

Mapping what changes across states provides more clarity than attempting bypass techniques without context.
