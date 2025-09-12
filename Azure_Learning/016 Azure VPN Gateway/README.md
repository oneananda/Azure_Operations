# 016 Azure VPN Gateway & ExpressRoute

## 📌 Overview
Azure provides secure options to connect on-premises networks to Azure Virtual Networks (VNets):

- **VPN Gateway** – Establishes encrypted tunnels over the public internet using IPsec/IKE VPN protocols.  
- **ExpressRoute** – Provides a private, dedicated connection between on-premises infrastructure and Azure (bypassing the public internet).

These services enable **hybrid cloud** and **multi-cloud** connectivity with high availability, resiliency, and security.

---

## 🎯 Learning Objectives
By the end of this module, you should be able to:
- Understand the difference between **VPN Gateway** and **ExpressRoute**.  
- Deploy a VPN Gateway and configure site-to-site, point-to-site, and VNet-to-VNet connections.  
- Set up ExpressRoute for private, high-throughput connectivity.  
- Apply monitoring and security best practices for hybrid connections.  
- Optimize costs and performance for your workloads.  


---

## 🏗️ Key Concepts

### Azure VPN Gateway
- **Types of connections:**
  - **Site-to-Site (S2S):** Connects on-prem networks to Azure VNets.  
  - **Point-to-Site (P2S):** Individual clients connect securely to Azure.  
  - **VNet-to-VNet:** Connects VNets across regions.  
- **Protocols supported:** IPsec/IKE (IKEv1, IKEv2), SSTP, OpenVPN.  
- **High availability:** Active-Active gateways with multiple tunnels.  
- **Throughput tiers:** Basic → VpnGw1 → VpnGw5 (up to multi-Gbps).  

### Azure ExpressRoute
- **Private connectivity** through a connectivity provider.  
- **Dedicated bandwidth options** (50 Mbps – 10 Gbps).  
- **Resilient architecture** with redundant circuits.  
- **Peering types:**
  - **Private Peering** – Direct connection to VNets.  
  - **Microsoft Peering** – Access Microsoft services (e.g., M365, Dynamics).  
  - **Public Peering** (retired) – previously for Azure public services.  

---