# Azure Pipelines: Automate Build and Deployment Process

This guide provides a simple step-by-step process of using Azure Pipelines to Automate Build and Deployment Process

## Assumptions & Prerequiests

- Azure DevOps Account
- Repository

## Create a New Pipeline

- Go to **Pipelines** in your Azure DevOps project.
- Click on **New Pipeline** and select the repository containing your code.

## Choose a Pipeline Template
- Azure Pipelines will detect the type of application (e.g., .NET, Node.js, etc.) and suggest a template.
- You can also choose a template or configure the pipeline manually.

## Configure the Build Process
- Edit the YAML file generated by Azure Pipelines. This file defines the steps in your build process (e.g., restoring dependencies, building the project, running tests).
- Customize the steps as needed for your project.

## Add Deployment Stages
- After the build steps, add stages to deploy the application.
- These stages can deploy to different environments, like development, staging, or production.

## Set Up Continuous Integration (CI)
- Enable Continuous Integration (CI) so that every commit triggers a new build automatically.
- This helps to ensure that your codebase is always in a buildable state.

## Set Up Continuous Deployment (CD)
- Enable Continuous Deployment (CD) to automatically deploy builds that pass all tests and checks.
- You can set up deployment approvals if you need manual intervention before deploying to production.

---