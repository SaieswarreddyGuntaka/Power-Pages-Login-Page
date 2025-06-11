# Power Pages Login Page

This repo contains files for creating a login page in Microsoft Power Pages (Power Apps Portals).

## Files

- `login-web-template.html`: Web Template for the login form (Liquid + HTML)
- `web-page-config.json`: Web Page configuration JSON
- `scripts/deploy.ps1`: Placeholder PowerShell script for deployment automation

---

## Setup & Testing

### 1. Import the Web Template

- Open Power Pages management.
- Navigate to **Design > Web Templates**.
- Create a new template named `Login Web Template`.
- Paste content from `login-web-template.html`.
- Save and publish.

### 2. Create the Login Web Page

- Go to **Design > Web Pages**.
- Create a page named `Login`.
- Partial URL: `login`
- Page Template: `Login Web Template`
- Parent Page: (set as needed)
- Publish the page.

### 3. Configure Authentication Providers

- Make sure you have at least one auth provider enabled (Local, Azure AD, or external).
- Configure this via **Portal Management > Site Settings** or **Power Platform Admin Center**.

### 4. Test the Login Page

- Visit `https://yourportalurl/login`.
- Enter valid portal user credentials.
- Successful login redirects to `/dashboard` (or your chosen page).

### 5. Troubleshooting

- Check portal user access.
- Verify authentication provider is active.
- Use browser developer tools to debug.
- Confirm portal changes are published.

---

## Deployment

Use the `scripts/deploy.ps1` PowerShell script (customize as needed) to automate deployment.

---

## License

MIT License © 2024 Sai Eswar Guntaka
