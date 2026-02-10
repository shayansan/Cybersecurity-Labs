# How I Think Before Scanning

## 1. Target Overview
This target is a personal e-commerce website focused on wholesale cosmetic products rather than direct retail sales.

The primary goal of the application is to present products, attract wholesale customers, and allow registered users to place and track orders.

The intended audience appears to be a limited group of buyers rather than the general public, which suggests a controlled access model.

Overall, the application does not follow a fully standard e-commerce pattern and seems intentionally simplified.

---

## 2. What a Normal User Can Do
Without authentication, a normal user can:
- Browse product listings
- Use the search functionality to look for products

Based on observation, unauthenticated users cannot:
- Leave comments
- Manage orders
- Access account-related features

After authentication (assumed), a user may be able to:
- Place wholesale orders
- Track existing orders
- Manage limited account information

The absence of common features such as visible password recovery suggests a non-standard or restricted user flow.

---

## 3. Observed User Inputs
The following areas accept or appear to accept user-controlled input:

- Search functionality:
  - Input type: Text-based product search
  - Observed parameters: `s`, `post_type`, and an `id` parameter present in the URL
  - Output behavior: Valid searches return product listings, while invalid searches result in a generic “not found” popup

The `id` parameter was manually modified, but no observable change in behavior occurred, suggesting that the parameter may be ignored, internally validated, or not directly tied to output generation.

- Comment functionality:
  - UI presence: Comment-related UI elements appear to exist
  - Backend behavior: Commenting is fully disabled, and no user input is accepted

Other potential inputs:
- Authentication-related forms may exist but are not accessible without registration

---

## 4. Unexpected or Notable Behaviors
During passive observation, several deviations from typical e-commerce platforms were identified:

- Complete absence of an active comment system despite UI traces
- No visible password recovery or reset option on the login interface
- Presence of URL parameters that do not appear to influence application behavior
- Minimal and generic error messaging with no technical leakage

These behaviors suggest deliberate limitation of features rather than accidental omission.

---

## 5. Initial Assumptions
Before using any scanning or testing tools, the following assumptions are made:

- The application operates under a restricted and possibly manually managed user model
- Not all backend functionality is exposed through the public interface
- User input is either strictly validated or intentionally ignored in some contexts

Additional assumptions:
- Authentication may be reserved for pre-approved users
- The platform prioritizes stability and control over feature richness

---

## 6. Questions to Answer Before Touching Any Tool
Before performing any active reconnaissance, the following questions should be answered:

- What is the actual authentication and registration flow for legitimate users?
- Which URL parameters are actively processed by the backend?
- Are unused parameters ignored or filtered at the application level?

Additional questions:
- Is access control role-based or binary (user vs admin)?
- Are sensitive actions protected by server-side validation?
- How are sessions managed after authentication?

---

## 7. Mental Conclusion
At this stage, the objective is not vulnerability discovery, but behavioral understanding.

The application shows signs of a deliberately reduced attack surface through feature restriction and generic error handling. Any scanning or exploitation attempt without first understanding these design choices would be inefficient and potentially misleading.
