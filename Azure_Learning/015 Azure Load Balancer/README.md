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
- Understand **Public** vs **Internal** Load Balancers.  
- Configure backend pools, health probes, and rules.  
- Differentiate between **Basic** vs **Standard** SKU.  
- Use Load Balancer for **high availability** and **scaling**.  
- Monitor and secure traffic flows effectively.  

---

## 🏗️ Key Concepts

### Types of Load Balancer
- **Public Load Balancer** → Distributes internet traffic to Azure resources.  
- **Internal Load Balancer (ILB)** → Distributes private traffic within a VNet.  

### Core Components
- **Frontend IP** – entry point (public/private).  
- **Backend Pool** – VMs/VMSS that receive traffic.  
- **Health Probe** – checks instance health.  
- **Load Balancing Rules** – distribute traffic based on protocol/port.  
- **NAT Rules** – direct inbound connections (RDP/SSH).  


