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


## 📊 Common Scenarios
- Monitoring the health and performance of Azure VMs and applications  
- Detecting and diagnosing issues using log queries and workbooks  
- Setting up alerts for unusual activity (e.g., CPU spikes, failed requests)  
- Visualizing service availability with dashboards  
- Enabling autoscale rules based on performance metrics  

---

## ⚡ Quick Start
1. **Enable Monitoring**  
   - In the Azure Portal, navigate to a resource and enable diagnostics/metrics collection.  
   - Connect to a Log Analytics workspace.

2. **Collect Data**  
   - Configure data collection rules (DCRs).  
   - Install the Azure Monitor Agent (AMA) on VMs.  
   - Add Application Insights SDK for app telemetry.

3. **Query Logs**  
   - Use KQL in the Log Analytics workspace to explore data.  
   - Example:
     ```kusto
     AzureActivity
     | where ActivityStatus == "Failed"
     | summarize count() by ResourceGroup, bin(TimeGenerated, 1h)
     ```

4. **Set Alerts**  
   - Create metric or log alerts with conditions and actions.  
   - Integrate with email, Teams, or PagerDuty.

---