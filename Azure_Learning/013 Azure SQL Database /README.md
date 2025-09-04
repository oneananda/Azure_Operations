# 013 Azure SQL Database / Managed Instance

## 📌 Overview
Azure SQL Database is a fully managed **Platform-as-a-Service (PaaS)** offering for relational databases, built on the latest SQL Server engine.  
It provides high availability, built-in intelligence, scalability, and advanced security features without the need to manage infrastructure.  

Azure also offers **SQL Managed Instance**, a PaaS service providing **near 100% compatibility** with on-premises SQL Server for easier lift-and-shift migrations.  

---

## 🎯 Learning Objectives
By the end of this module, you should be able to:
- Differentiate between **Azure SQL Database** and **Managed Instance**.
- Deploy and connect to Azure SQL Database.
- Configure **scaling**, **backups**, and **replication**.
- Secure databases with encryption, firewall rules, and identities.
- Apply monitoring, tuning, and cost optimization strategies.

---

## 🏗️ Key Concepts

### Deployment Models
- **Single Database** – isolated database with dedicated resources.
- **Elastic Pool** – multiple databases sharing resources (cost-optimized).
- **Managed Instance** – nearly full SQL Server compatibility, VNet integration.

### Performance Models
- **DTU-based model** – abstracted mix of CPU, memory, I/O.
- **vCore model** – choose CPU, memory, storage independently.

### High Availability & Backup
- Built-in HA with **99.99% SLA**.
- Automatic backups (point-in-time restore).
- Geo-replication for disaster recovery.

### Security
- **Firewall rules** & **VNet service endpoints**.
- **Transparent Data Encryption (TDE)**.
- **Always Encrypted** for sensitive fields.
- **Azure AD authentication**.
- **Advanced Threat Protection** (Defender for SQL).

---

## Configure firewall

az sql server firewall-rule create \
  --resource-group MyResourceGroup \
  --server my-sql-server123 \
  --name AllowMyIP \
  --start-ip-address <your-ip> \
  --end-ip-address <your-ip>


💰 Cost Optimization

Use Elastic Pools for multiple variable-load databases.

Scale up/down based on workload demand (vCore or DTU model).

Pause/resume compute for serverless SQL Database.

Use Auto-pause for dev/test environments.

Monitor with Azure Cost Management and apply Advisor recommendations.
