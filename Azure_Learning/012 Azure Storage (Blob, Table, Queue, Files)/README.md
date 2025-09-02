# 012 Azure Storage (Blob, Table, Queue, Files)

## 📌 Overview
Azure Storage provides highly available, durable, and secure cloud storage solutions.  
It supports multiple storage types to meet different application needs — from unstructured data to structured NoSQL and messaging.

---

## 🎯 Learning Objectives
By the end of this module, you should be able to:
- Understand the four main types of Azure Storage.
- Configure redundancy (LRS, ZRS, GRS, RA-GRS).
- Implement lifecycle management policies for cost optimization.
- Secure storage accounts using networking and identity features.
- Access storage securely from applications and services.

---

## 🏗️ Storage Types

### 1. **Blob Storage**
- For unstructured data (images, video, logs, backups).
- Tiers: Hot, Cool, Archive.
- Supports lifecycle rules for automatic tiering or deletion.
- Supports **Data Lake Gen2** for big data analytics.

### 2. **Table Storage**
- NoSQL key/attribute store.
- Scalable and schema-less.
- Used for fast lookups, metadata, configuration data.

### 3. **Queue Storage**
- Message storage for asynchronous communication between components.
- Each message up to 64 KB.
- Useful for decoupling microservices.

### 4. **File Storage**
- Fully managed file shares (SMB, NFS).
- Lift-and-shift migration of on-premises apps.
- Can be mounted by Windows, Linux, macOS VMs.

---

## 🔄 Redundancy Options
Azure Storage provides data replication options to ensure durability:

- **LRS (Locally Redundant Storage):**  
  Replicates data 3 times within a single datacenter.

- **ZRS (Zone Redundant Storage):**  
  Replicates across 3 availability zones in a region.

- **GRS (Geo-Redundant Storage):**  
  Replicates to a secondary region (hundreds of miles away).

- **RA-GRS (Read-Access GRS):**  
  Same as GRS, but allows **read access** to the secondary region.

---

## ⏳ Lifecycle Management
- **Automatic tiering:** Move blobs between Hot, Cool, and Archive tiers.
- **Rules:** Define age-based deletion or tier change policies.
- **Example Policy:**  
  - Move to Cool after 30 days.  
  - Move to Archive after 90 days.  
  - Delete after 365 days.

---
