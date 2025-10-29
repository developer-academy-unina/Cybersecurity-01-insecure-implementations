# Security UX Demo Activity Guide

This activity helps participants explore how small front-end choices can make an app feel insecure or secure.  
The focus is on recognizing problems in insecure implementations, suggesting improvements, and comparing them with secure patterns.

---

## Activity Flow

### 1. Run the Insecure Demos

- Open the **Insecure Demo app**.
- Navigate through each screen (Login, Contacts, Error Messages, Delete, OTP).
- Observe the UI and behavior **from the user perspective**.
- Note anything that feels insecure, confusing, or untrustworthy.

### 2. Analyze the Insecure Code

- Open the SwiftUI code for each insecure screen.
- Identify the patterns that make it insecure (e.g. visible password fields, overly specific error messages).
- Write down your observations:
  - What is the security problem?
  - How could it be improved?

### 3. Suggest Improvements

- As individuals or in small groups, propose secure alternatives:
  - Different UI elements (`SecureField` vs `TextField`)
  - Safer error messaging
  - Better permission timing
  - Confirmation before destructive actions
  - Store tokens securely (Keychain instead of `UserDefaults`)
  - System-supported OTP handling
- If time allows, **advanced participants** can modify the insecure code to implement their suggestions.

### 4. Regroup and Compare

- As a full group, discuss the insecure behaviors observed.
- Facilitator demos the **Secure Demo app**.
- Compare what’s different in the code between insecure and secure versions.
- Highlight how small changes improve both security _and_ user experience.

---

## Optional Extension

- Advanced participants demo their improved versions of the insecure code.
- Compare their solutions with the provided Secure Demo implementation.
- Discuss trade-offs: security vs. usability vs. developer effort.

---

## Key Learning Goals

- Recognize common insecure UX patterns.
- Practice analyzing and critiquing code with a **security mindset**.
- Understand how to make small, concrete changes that improve security and user trust.
- Appreciate that **secure UX is often also better UX**.
