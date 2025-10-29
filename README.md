<div align="center">
  <h3>Workshop</h3>
  <h1>
      Cybersecurity 01 - Insecure Security UX Demos<br />
  </h1>
  <br />
</div>

<br />

<p align="center">
  <a href="#" alt="Version">
    <img src="https://img.shields.io/static/v1?label=Version&message=1.0.0&color=brightgreen" />
  </a>
  <a href="#" alt="XCode Version">
    <img src="https://img.shields.io/static/v1?label=XCode%20Version&message=26.0&color=brightgreen&logo=xcode" />
  </a>        
  <a href="#" alt="Swift Version">
    <img src="https://img.shields.io/static/v1?label=Swift%20Version&message=6.0&color=brightgreen&logo=swift" />
  </a>
  <a href="#" alt="Framework used">
    <img src="https://img.shields.io/static/v1?label=Framework%20used&message=SwiftUI&color=brightgreen&logo=swift">
  </a>          
</p>

---

## About

In this workshop, you will explore how poor design choices in user experience (UX) can lead to serious security vulnerabilities.

This project contains deliberately **insecure implementations** of common app UX flows. Each screen demonstrates a common mistake that makes an app feel or be insecure.


## Learning Goals

In this workshop, you will:
- Understand how bad UX choices can undermine security
- Recognize red flags in login flows, permissions, error handling, destructive actions, and code entry


## Screens Demonstrated

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

## Getting Started

### Installation

To get access to the project created during the workshop, you can [download the repository as a zip file](https://github.com/developer-academy-unina/Cybersecurity-01-insecure-implementations/archive/refs/heads/main.zip) and access the project.

<br />
