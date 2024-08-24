# Azure App Service Creation

## Steps

### Step 1: Sign in to the Azure Portal
- Go to the Azure Portal (https://portal.azure.com/).
- Sign in with your Azure account.

### Step 2: Create a New App Service

**Navigate to App Services:**
- In the Azure Portal, search for "App Services" in the search bar and select it from the results.
**Create a New App Service:**
- Click the "+ Create" button to start creating a new App Service.

### Configuration

- Subscription: Need a valid subscirption.
- Resource Group: We need a resource group to host, select an existing one or create new.
- Name: Enter a unique name for your web app. This name will be part of your app's URL (e.g., https://yourappname.azurewebsites.net).
- Publish: Select the type of the code you want to deploy (e.g., Code or Docker container).
- Runtime Stack: Choose the Runtime Stack (e.g., .NET, NodeJS).
- Region: Select the region.
- Operating System: Choose the OS(e.g., Windows, Linux).
- App Service Plan: Select an existing or create new.
- App Service Plan New: Specify Name, Region, and Pricing Tier.

### Monitoring

- Application Insights: Enable application insights for monitoring and diagnostics if needed.

### Tags

- Add tags to categorize, identify the resources for easier management.

### Review and create

- Review all the configurations.
- Click "Create" to deploy the App Service.



