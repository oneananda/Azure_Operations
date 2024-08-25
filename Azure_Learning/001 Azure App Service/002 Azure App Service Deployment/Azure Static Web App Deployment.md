# Azure Static Web App Deployment Guide

This guide provides step-by-step instructions for deploying Azure Static Web Apps using both public and private GitHub repositories.

## Prerequisites

- An active [Azure account](https://azure.com/free).
- A GitHub account with the repository to be deployed.

## Deployment Overview

This tutorial demonstrates how to deploy Azure Static Web Apps from:
- A public GitHub repository.
- A private GitHub repository.

Both deployments utilize the `vanilla-basic` template available at [staticwebdev/vanilla-basic](https://github.com/staticwebdev/vanilla-basic).

## Step 1: Fork or Clone the Repository

1. **Public Repository**:
   - Fork the [azure-static-web](https://github.com/oneananda/azure-static-web.git) repository to your GitHub account.

2. **Private Repository**:
   - Clone the [staticwebdev/vanilla-basic](https://github.com/staticwebdev/vanilla-basic) repository and set it as private in your GitHub account.

## Step 2: Create Azure Static Web App

1. **Log in to Azure Portal**:
   - Visit [Azure Portal](https://portal.azure.com) and sign in.

2. **Create a Static Web App**:
   - In the Azure portal, click on `Create a resource` and search for `Static Web Apps`.
   - Click on `Static Web Apps (Preview)` and then click `Create`.

3. **Configure App Details**:
   - **Subscription**: Select your Azure subscription.
   - **Resource Group**: Create a new resource group or select an existing one.
   - **Static Web App Name**: Provide a unique name for your static web app.
   - **Region**: Choose a region close to your users.

4. **Deployment Details**:
   - **Source**: Select `GitHub`.
   - **Repository**:
     - **Public Repo**: Select the forked repository (`azure-static-web`).
     - **Private Repo**: Select your private repository (`vanilla-basic`).
   - **Branch**: Choose the branch (e.g., `main`).

5. **Build Details**:
   - **Build Presets**: Select `Custom`.
   - **App location**: Leave it blank for the root directory or specify the folder if needed.
   - **Output location**: Enter `dist` or leave it blank if not applicable.

6. **Review and Create**:
   - Review your settings and click `Create` to deploy the static web app.

## Step 3: Access Your Deployed Static Web App

Once the deployment is complete, Azure provides a default domain for your static web app:

- **Public Repo Deployment**: [https://victorious-stone-0ed44e51e.5.azurestaticapps.net/](https://victorious-stone-0ed44e51e.5.azurestaticapps.net/)
- **Private Repo Deployment**: [https://purple-sand-02f91f110.5.azurestaticapps.net/](https://purple-sand-02f91f110.5.azurestaticapps.net/)

Visit the URLs above to view the `sample` deployed static web apps.

## Additional Notes

- For further customization and configuration, consult the [Azure Static Web Apps documentation](https://learn.microsoft.com/en-us/azure/static-web-apps/).
- To enable custom domains, navigate to the `Custom domains` section in the Azure portal for your static web app.

---

