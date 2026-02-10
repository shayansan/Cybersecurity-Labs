# Attack Surface Analysis

## 1. Understanding the Attack Surface
In this context, the attack surface represents all points where a user interacts with the application in a way that causes data to be sent to the backend or triggers server-side logic.

This analysis focuses on understanding where user-controlled input exists, how it is processed, and which areas of the application carry higher sensitivity.

---

## 2. Identified User Interaction Points
Based on passive observation, the following interaction points were identified:

- Search functionality
- Product pages and product selection
- Product filtering mechanisms
- Shopping cart management
- Checkout and payment process
- Header and footer actions (such as contact or communication pages)

Each of these points generates requests to the backend and contributes to the overall attack surface.

---

## 3. User-Controlled Data by Interaction Point

### Search
- User provides a text-based search query.
- The backend processes the query and returns matching results or a generic “not found” message.
- Redirection may occur to a results page displaying multiple products.

This interaction represents a low-risk but valuable recon surface due to direct user input and observable backend behavior.

---

### Product Pages
- User interaction is primarily through clicking on products.
- These actions implicitly pass identifiers to the backend to retrieve product-specific data.

Although no direct input is provided, the backend still relies on user-driven parameters to determine responses.

---

### Product Filters
- Filters are applied through predefined options.
- In some cases, filters may allow selecting ranges or limited user-defined values.

While user freedom is restricted, data is still sent to the backend and affects query logic, making this a controlled but non-zero attack surface.

---

### Shopping Cart
- Users can modify order quantities.
- Personal information such as name, surname, and address is provided during checkout.

This area involves both personal data and business logic, increasing its sensitivity compared to browsing-related interactions.

---

### Payment and Post-Payment Redirection
- After initiating payment, a request is sent to the server to process the transaction.
- Upon completion, the user is redirected to a page displaying purchase details.

This flow represents the most sensitive section of the application due to its direct connection to financial operations and state changes.

---

## 4. System Behavior and Redirection Patterns
Several interaction points result in redirection behavior, including:

- Search actions redirecting to result listing pages
- Payment completion redirecting to order summary pages

These redirects indicate transitions between application states and often occur after important backend decisions, increasing their importance from a security perspective.

---

## 5. Sensitivity Assessment
From a mental risk-based perspective:

- Low sensitivity:
  - Search functionality
  - Product browsing and filters

- Medium sensitivity:
  - Shopping cart modifications
  - Personal information submission

- High sensitivity:
  - Checkout process
  - Payment handling
  - Post-payment redirection

While high-sensitivity areas demand the most protection, lower-sensitivity interactions may still indirectly affect user data if misused.

---

## 6. Mental Conclusion
The most critical portion of the attack surface lies between the moment a user enters the shopping cart and the final payment confirmation.

However, the overall attack surface is cumulative, and even simple interactive elements such as search queries or filters contribute to the security posture of the application.

Understanding how these interactions connect is essential before attempting any active testing or scanning.
