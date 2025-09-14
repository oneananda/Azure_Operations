# 018 Azure DDoS Protection

## 📌 Overview
Azure Distributed Denial of Service (DDoS) Protection safeguards your applications against **volumetric, protocol, and application-layer attacks**.  
It leverages Azure’s global scale and intelligence to provide automatic attack mitigation while ensuring application availability and performance.  

There are two tiers:
- **DDoS Protection Basic** → Always-on protection, included free with Azure platform.  
- **DDoS Protection Standard** → Enterprise-grade, tuned protection with advanced telemetry, cost protection, and response team support.  

---


## 🎯 Learning Objectives
By the end of this module, you should be able to:
- Understand **DDoS attack types** and Azure defenses.  
- Differentiate between **Basic** vs **Standard** DDoS Protection.  
- Configure and enable DDoS Protection on a Virtual Network.  
- Monitor, log, and respond to DDoS attack alerts.  
- Apply best practices for securing applications from DDoS threats.  

---

## 🏗️ Key Concepts

### Attack Types Mitigated
- **Volumetric Attacks** → Flood network with traffic (UDP floods, amplification attacks).  
- **Protocol Attacks** → Exploit protocol weaknesses (SYN floods, fragmented packets).  
- **Application Layer Attacks** (Layer 7) → Handled separately with **WAF** on Azure Application Gateway / Front Door.  

### Features of DDoS Standard
- Always-on traffic monitoring.  
- Adaptive, auto-tuned policies.  
- Telemetry and logging via Azure Monitor & Log Analytics.  
- Mitigation reports and attack analytics.  
- Cost protection → Credits against scale-out due to an attack.  
- 24/7 **DDoS Rapid Response (DRR)** support.  

---
