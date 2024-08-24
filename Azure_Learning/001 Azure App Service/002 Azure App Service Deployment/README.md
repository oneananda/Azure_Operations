# Azure App Service Deployment

## Deployment Options

Azure App Service provides multiple ways to deploy the application:

- **Azure Portal:** Deploy directly from the portal using manual upload or integration with 
  - Azure Repos, 
  - GitHub, 
  - Bitbucket.
- **Git-Based Deployment:** Push the code from local Git repositories or use GitHub Actions for CI/CD.
- **Azure DevOps:** Use Azure Pipelines to automate the build and deployment process.
- **FTP/FTPS:** Deploy using FTP/FTPS for simple file uploads.
- **Zip Deploy:** Upload a zip file containing the app’s code and content.
- **Containerized Deployment:** Deploy Docker containers or Kubernetes-based applications.

## Deployment Slots

- **Production Slot:** The live version of the app.
- **Staging Slots:** Test versions of the app that allow to validate changes before swapping with production.
- **Slot Swap:** Allows to swap between production and staging slots with minimal downtime, reducing risks during deployment.


