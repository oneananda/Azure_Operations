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

## 💰 Cost Optimization

* **Basic** is free and sufficient for most small workloads.
* Use **Standard** for internet-facing production workloads (especially financial, gaming, e-commerce).
* Consider **shared protection plans** across VNets to optimize cost.
* Leverage **cost protection credits** for scale-out due to attack.

---

## 📊 Monitoring & Logging

* **Azure Monitor Metrics** → dropped packets, attack traffic vs clean traffic.
* **Attack Analytics** → view detailed attack reports post-mitigation.
* **Log Analytics** → centralized insights into DDoS events.
* **Alerts** → configure notifications for attack detection and mitigation events.

---

## 🔒 Security Best Practices

* Combine **DDoS Protection** with:

  * **NSGs (Network Security Groups)** for L3/L4 filtering.
  * **Azure Firewall / Application Gateway WAF** for Layer 7 attacks.
  * **Private Endpoints** where possible to reduce exposure.
* Always enable **DDoS Standard** for mission-critical apps.
* Regularly review attack telemetry and update architecture if needed.

---