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
