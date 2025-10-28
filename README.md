<div align="center">
  <h3>Workshop - Cybersecurity 01</h3>
  <h1>Insecure Security UX Demos</h1>
  <br />
</div>

## About

This project contains deliberately **insecure implementations** of common app UX flows.  
Each screen demonstrates a common mistake that makes an app feel or be insecure.

### Screens

- **Login**

  - Password is visible (`TextField` instead of `SecureField`)
  - Error messages leak whether an account exists (“Email not found” vs “Incorrect password”)

- **Contacts**

  - Requests permission immediately on view appear, with no explanation or user action

- **Delete**

  - Deletes immediately on tap, no confirmation

- **Token Storage**

  - Session token saved in `UserDefaults`
  - Visible in the app’s `.plist` file under `Library/Preferences`
  - Exposed in plain text, easy to extract from simulator or device backups

- **OTP**
  - One-time code entered in a plain `TextField`
  - Digits visible, no autofill support, easy to shoulder-surf

## Learning Goals

- Understand how bad UX choices can undermine security
- Recognize red flags in login flows, permissions, error handling, destructive actions, and code entry
