# 014 Azure Cosmos DB – Global Distribution, Partitioning, Consistency Levels

## 📌 Overview
Azure Cosmos DB is a **globally distributed, multi-model NoSQL database service**.  
It is designed for high availability, low latency, elastic scalability, and enterprise-grade SLAs.  

Cosmos DB automatically replicates data across regions and provides tunable **consistency levels**, ensuring developers can balance performance and correctness for their applications.  

---

## 🎯 Learning Objectives
By the end of this module, you should be able to:
- Understand Cosmos DB’s global distribution model.
- Design and implement partitioning for scale-out workloads.
- Choose the right **consistency level** for your use case.
- Query data using SQL-like syntax or APIs.
- Apply security, monitoring, and cost optimization practices.

---

## 🏗️ Key Concepts

### 1. Multi-Model Support
Cosmos DB supports different APIs for different workloads:
- **Core (SQL API)** – JSON document DB with SQL-like queries.
- **MongoDB API** – compatible with MongoDB drivers.
- **Cassandra API** – for wide-column workloads.
- **Gremlin API** – for graph databases.
- **Table API** – for key-value storage.
