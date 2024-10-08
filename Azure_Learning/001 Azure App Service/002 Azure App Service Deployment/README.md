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
- **Zip Deploy:** Upload a zip file containing the app�s code and content.
- **Containerized Deployment:** Deploy Docker containers or Kubernetes-based applications.

## Deployment Slots

- **Production Slot:** The live version of the app.
- **Staging Slots:** Test versions of the app that allow to validate changes before swapping with production.
- **Slot Swap:** Allows to swap between production and staging slots with minimal downtime, reducing risks during deployment.

## Continuous Deployment

- **Azure Repos/GitHub Integration:** Automate deployment by connecting the Azure App Service to a repository. When code is pushed to a branch, the app is automatically deployed.
- **CI/CD Pipelines:** We can use Azure DevOps to create a pipeline that automatically builds, tests, and deploys your application.

## Deployment Process

- **Build:** Azure builds the application using the specified runtime stack.
- **Package:** The app is packaged with all dependencies.
- **Deploy:** The package is deployed to the selected deployment slot.
- **Verify:** After deployment, perform testing on a staging slot before swapping with production.