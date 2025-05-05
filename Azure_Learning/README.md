# Azure Migrate

Azure Migrate provides a unified and integrated experience to assess and migrate on-premises servers, infrastructure, applications, and data to Microsoft Azure. It offers discovery, assessment, and migration capabilities through a centralized Azure Migrate project.

## Table of Contents

* [Features](#features)
* [Architecture](#architecture)
* [Prerequisites](#prerequisites)
* [Getting Started](#getting-started)
* [Deployment Steps](#deployment-steps)
* [Assessment](#assessment)
* [Migration](#migration)
* [Monitoring and Reporting](#monitoring-and-reporting)
* [Troubleshooting](#troubleshooting)
* [Contributing](#contributing)
* [License](#license)

## Features

* **Discovery & Assessment**: Automatically discover on-premises VMware, Hyper-V, physical servers, and other workloads.
* **Server Migration**: Migrate VMware, Hyper-V, and physical servers to Azure using agentless or agent-based approaches.
* **Database Migration**: Simplify migrations of SQL Server and other databases to Azure SQL Database or SQL Managed Instance.
* **Application Migration**: Move web applications to Azure App Service.
* **Integration**: Integrates with third‑party tools and Microsoft services (like Site Recovery, Database Migration Service).
* **Cost Estimation**: Provides cost estimates for running workloads on Azure.

## Architecture

1. **Azure Migrate Project**: Centralized workspace in the Azure portal.
2. **Appliance**: Virtual appliance (OVF/ARM template) deployed on‑premises for discovery and assessment.
3. **Migration Tools**: Built‑in tools for server, database, and app migrations.
4. **Azure Services**: Azure Site Recovery, Azure Database Migration Service, Azure App Service.

## Prerequisites

* An active [Azure subscription](https://azure.microsoft.com/free/).
* Sufficient permissions to create resources in Azure (Contributor role).
* On‑premises environment: VMware ESXi or Microsoft Hyper‑V, or physical servers.
* Network connectivity between on‑premises environment and Azure (ExpressRoute or VPN).
* For database migration: SQL Server 2005 and above for source.

## Getting Started

1. **Create an Azure Migrate Project** in the Azure portal.
2. **Download and deploy the Azure Migrate appliance** to your on‑premises environment.
3. **Register the appliance** with your Azure Migrate project.
4. **Discover servers** in your environment and let the appliance upload metadata to Azure.
5. **Run assessments** to evaluate compatibility, right‑size VMs, and estimate costs.

## Deployment Steps

1. In the Azure portal, navigate to **Azure Migrate** > **Servers** > **Discover**.
2. Download the OVA file or ARM template for the Azure Migrate appliance.
3. Deploy the appliance and configure credentials for vCenter or Hyper‑V host.
4. Ensure the appliance can connect to Azure endpoints over HTTPS.
5. Validate the appliance registration in Azure Migrate.

## Assessment

* **Compatibility Assessment**: Identifies readiness of servers to migrate.
* **Performance-based Sizing**: Recommends Azure VM sizes based on historical utilization.
* **Cost Analysis**: Estimates monthly Azure costs for running workloads.

## Migration

1. **Server Migration**: Enable replication in the Azure Migrate portal, choose target region and target VM configurations, and start replication.
2. **Database Migration**: Launch Azure Database Migration Service from the Azure Migrate hub, configure source and target connections, and run migrations.
3. **Application Migration**: Use the App Service Migration Assistant or Azure Migrate Web App tool for web apps.
4. **Test Migrations**: Perform test failover to validate migrations without impacting production.
5. **Cutover**: Perform a final migration and cutover workloads to Azure.

## Monitoring and Reporting

* Monitor replication health and migration progress in the Azure portal.
* View assessment reports and cost analyses under the **Assess** tab.
* Export spreadsheets of discoveries and assessments for stakeholders.

## Troubleshooting

* **Connectivity Issues**: Verify network routes, proxy settings, and firewall rules.
* **Appliance Errors**: Check appliance logs in `C:\ProgramData\AzureMigrationAppliance\Logs` or `/var/log/azuremigrationappliance`.
* **Assessment Discrepancies**: Ensure the appliance time sync and credentials are correct.

## References

* [Azure Migrate Documentation](https://docs.microsoft.com/azure/migrate)
* [Azure Migration and Modernization Center](https://azure.microsoft.com/solutions/migration)
