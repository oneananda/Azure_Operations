# 015 Azure Load Balancer

## 📌 Overview
Azure Load Balancer is a **Layer 4 (TCP/UDP)** load balancing service that distributes incoming traffic across healthy virtual machines (VMs), virtual machine scale sets, or availability sets.  
It ensures high availability, resiliency, and scalability for applications running in Azure.

There are two main SKUs:
- **Basic Load Balancer** – for small-scale apps, limited features.
- **Standard Load Balancer** – production-ready, zone-redundant, secure, and highly scalable.

---

## 🎯 Learning Objectives
By the end of this module, you should be able to:
- Understand the difference between **Public** and **Internal** Load Balancers.
- Configure backend pools, health probes, and load balancing rules.
- Differentiate between **Basic** vs **Standard** SKU.
- Use Load Balancer with **high availability** and **scaling scenarios**.
- Monitor and secure traffic efficiently.

---

## 🏗️ Key Concepts

### Types of Azure Load Balancer
1. **Public Load Balancer**  
   - Routes traffic from the internet to Azure resources (VMs, VMSS).  
   - Provides outbound connectivity for VMs.  

2. **Internal Load Balancer (ILB)**  
   - Routes traffic inside a virtual network (VNet).  
   - Used for private applications, database clusters, or line-of-business apps.  

### Components
- **Frontend IP Configuration** – entry point for traffic (public or private IP).  
- **Backend Pool** – set of VMs or VMSS instances receiving traffic.  
- **Health Probe** – checks health of backend instances.  
- **Load Balancing Rules** – define how traffic is distributed.  
- **NAT Rules** – provide direct inbound access (e.g., RDP/SSH to individual VMs).  

### High Availability
- Zone-redundant in Standard SKU.  
- Supports scaling to millions of flows.  
- Can be combined with **Azure Availability Zones** for resiliency.  

---
