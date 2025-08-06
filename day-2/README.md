# Temporary User Account Setup for Nautilus Project

This guide outlines the steps to create a temporary user account for the Nautilus project. The account is required for developer **mariyam** to access App Server 1 in the Stratos Datacenter for a limited duration.

## Requirements

- **Username:** `mariyam` (all lowercase)
- **Server:** App Server 1, Stratos Datacenter
- **Account Expiry Date:** `2024-01-28`

## Instructions

1. **Create the User Account**

  On App Server 1, run the following command to create the user and set the expiry date.

2. **Verify the Account**

  Confirm the account and expiry date:

  ```bash
  sudo chage -l mariyam
  ```

## Notes

- Ensure the username is in lowercase to follow standard protocol.
- The account will be automatically disabled after the expiry date.

---

*For any issues or questions, contact the Stratos Datacenter admin team.*
