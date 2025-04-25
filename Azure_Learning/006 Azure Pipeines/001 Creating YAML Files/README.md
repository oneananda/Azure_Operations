# "azure-pipelines.yml" - Section-by-Section Breakdown

### 1. Pipeline metadata  
- **`name`** – A custom build identifier (e.g. date+revision). If omitted, Azure DevOps auto-generates one.

### 2. `trigger`  
Defines which branches will automatically start a new build when updated.  
```yaml
trigger:
  branches:
    include:
      - main
      - feature/*
```

### 3. `pr` (Pull Request)  
Runs builds to validate PRs before merging.  
```yaml
pr:
  branches:
    include:
      - main
```

### 4. `variables`  
Global key/value pairs. Can also be set securely in the UI or linked to variable groups.  
```yaml
variables:
  vmImage: 'ubuntu-latest'
  buildConfiguration: 'Release'
```

### 5. `resources`  
Reference external repos, container images, NuGet feeds, or other pipelines:  
- **`repositories`** – import YAML templates or scripts  
- **`containers`** – spin up a Docker container as the job’s execution environment  

### 6. `stages`  
High-level phases (e.g., Build, Test, Deploy). Enables approvals, gates, parallelization.

### 7. `jobs`  
Units of work within a stage. Each job can run on its own agent or container.  

### 8. `steps`  
Ordered list of tasks or scripts executed in a job:  
- **`checkout`** – fetch your code  
- **`task:`** – built-in or marketplace tasks (e.g. `DotNetCoreCLI@2`, `AzureWebApp@1`)  
- **`script:`** – arbitrary shell/PowerShell commands  

### 9. Environments & Approvals  
- **`deployment`** jobs target an **`environment`**.  
- Configure pre-deployment approvals in the Azure DevOps UI.  

---

## Advanced Concepts

- **Templates & `extends`**  
  Factor out common logic into separate YAML files, then import with:
  ```yaml
  extends:
    template: templates/build.yml@templates
    parameters:
      configuration: $(buildConfiguration)
  ```

- **Parameters**  
  Define at the top to make pipelines reusable:
  ```yaml
  parameters:
    - name: vmImage
      type: string
      default: 'ubuntu-latest'
  ```

- **Conditional Insertion**  
  Use `condition:` on stages/jobs/steps:
  ```yaml
  - job: SecurityScan
    condition: eq( variables['Build.SourceBranch'], 'refs/heads/main' )
  ```

- **Artifacts**  
  Publish with `PublishPipelineArtifact@1` and consume in downstream stages:
  ```yaml
  - task: PublishPipelineArtifact@1
    inputs:
      targetPath: '$(Build.ArtifactStagingDirectory)'
      artifact: 'drop'
  ```

- **Matrix Builds**  
  Run the same job across multiple configurations in parallel:
  ```yaml
  strategy:
    matrix:
      Linux:
        vmImage: 'ubuntu-latest'
      Windows:
        vmImage: 'windows-latest'
  ```

---
