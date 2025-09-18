# 021 Azure Monitor

## 📌 Overview
Azure Monitor is a comprehensive monitoring service that collects, analyzes, and acts on telemetry data from cloud and on-premises environments. It helps ensure the availability, performance, and security of applications and infrastructure by providing a unified platform for metrics, logs, alerts, and insights.

---

## 🚀 Key Features
- **Metrics Collection**  
  Gather real-time performance data from Azure resources, virtual machines, containers, and applications.

- **Log Analytics**  
  Collect, search, and analyze logs from various sources using Kusto Query Language (KQL).

- **Alerts & Notifications**  
  Configure metric- and log-based alerts that trigger notifications, automation runbooks, or third-party integrations (Teams, Slack, ITSM tools).

- **Application Insights**  
  Deep application performance monitoring (APM) including request rates, response times, dependencies, and exceptions.

- **Dashboards & Visualization**  
  Build custom dashboards or use built-in workbooks for visualization of key metrics and logs.

- **Integration with Azure Services**  
  Works seamlessly with services like Azure Security Center, Azure Automation, Azure Sentinel, and third-party SIEM solutions.

---
## 🏗️ Architecture Components
1. **Data Sources**  
   - Azure resources (VMs, storage, databases, AKS, App Service, etc.)  
   - Applications (via Application Insights SDK)  
   - Custom telemetry (via APIs, agents)

2. **Data Collection**  
   - Metrics (near real-time numeric data)  
   - Logs (event and trace data)  
   - Distributed tracing

3. **Data Storage**  
   - Azure Monitor Metrics database  
   - Azure Log Analytics workspace

4. **Analysis & Actions**  
   - KQL queries for deep log analysis  
   - Alerts and auto-scaling triggers  
   - Insights (VM Insights, Container Insights, Network Insights)

---