# Azure Pipelines 

Azure Pipelines is a cloud-hosted continuous integration and continuous delivery (CI/CD) service, part of the Microsoft Azure DevOps suite. It lets you automatically build, test and deploy your code to any platform or cloud.

## Key Concepts

- **Pipelines**  
  - **Build (CI)**: Compiles your code, runs tests, and produces build artifacts (binaries, packages, container images).  
  - **Release (CD)**: Takes those artifacts and deploys them to target environments (e.g., development, staging, production).

- **YAML vs. Classic**
  - **YAML Pipelines**  
    - Configuration-as-code: pipeline definitions live alongside your application code in a file named `azure-pipelines.yml`.  
    - Better for versioning, branching, and reuse.  
  - **Classic Pipelines**  
    - GUI-driven editor in the Azure DevOps portal.  
    - Easier to get started if you prefer point-and-click over editing YAML.

- **Agents and Pools**  
  - **Microsoft-hosted agents**  
    - VMs in Azure you pay per minute; maintenance and updates handled by Microsoft.  
  - **Self-hosted agents**  
    - Run on your own machines or VMs; full control over software, can reduce costs if you already have capacity.

- **Tasks and Extensions**  
  - Pre-built tasks for compiling code (e.g., `DotNetCoreCLI`, `Maven`, `npm`), running tests, and deploying (e.g., `AzureCLI`, `Kubernetes` divices).  
  - Marketplace extensions add support for third-party tools and services.

- **Environments and Approvals**  
  - Model your deployment targets (e.g., “Staging”, “Production”) as **Environments**.  
  - Configure **gates** and **approvals** so that deployments only proceed after manual sign-off or automated checks (e.g., quality, security scans).

## Typical Workflow

1. **Commit** your code to a supported repository (Azure Repos, GitHub, GitLab, Bitbucket…).  
2. **Trigger** your pipeline automatically on push or pull-request events (or manually).  
3. **Build** stage  
   - Restore dependencies  
   - Compile  
   - Run unit tests  
   - Publish build artifacts  
4. **Release** stage  
   - Deploy to one or more environments  
   - Run integration or smoke tests  
   - Approval gates before production  
5. **Monitor** dashboards and logs to see build/test/deploy status.

## Why Use Azure Pipelines?

- **Multi-platform**: Build Windows, Linux, macOS, iOS, Android, containers and more.  
- **Scalable**: Run many jobs in parallel with agent pools.  
- **Integrated**: Deep integration with Azure services (App Service, AKS, Functions), but equally capable of deploying anywhere (AWS, GCP, on-prem).  
- **Extensible**: Leverage community-contributed tasks or write your own.  
- **Free tier**: Public projects get unlimited build minutes; private projects include free minutes per month.

## Sample YAML Snippet

```yaml
trigger:
- main

pool:
  vmImage: ubuntu-latest

variables:
  buildConfiguration: 'Release'

steps:
- task: UseDotNet@2
  inputs:
    packageType: sdk
    version: '7.x'
- script: dotnet build --configuration $(buildConfiguration)
  displayName: 'Build solution'
- script: dotnet test --configuration $(buildConfiguration) --no-build
  displayName: 'Run unit tests'
- task: PublishBuildArtifacts@1
  inputs:
    pathToPublish: '$(Build.ArtifactStagingDirectory)'
    artifactName: drop
```

This pipeline triggers on commits to **main**, uses an Ubuntu agent to build and test a .NET project, and publishes the results as an artifact.

---

Azure Pipelines provides a flexible, scalable foundation for implementing CI/CD workflows across virtually any language and target environment—helping teams ship quality software faster and more reliably.

