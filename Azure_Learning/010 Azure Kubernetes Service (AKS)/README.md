# 010 - Azure Kubernetes Service (AKS)

## 📌 Overview
Azure Kubernetes Service (AKS) is a managed Kubernetes container orchestration service provided by Microsoft Azure. It simplifies deploying, managing, and scaling containerized applications using Kubernetes, while offloading much of the operational overhead such as upgrades, patching, and monitoring.

AKS is ideal for running microservices-based applications, enabling DevOps workflows, and providing scalability, availability, and security for containerized workloads.

---

## 🚀 Key Features
- **Managed Kubernetes Control Plane** – Azure manages the control plane at no extra cost.
- **Automatic Scaling** – Supports both cluster autoscaler and pod-based horizontal autoscaling.
- **Integrated Developer Tools** – Tight integration with Azure DevOps, GitHub Actions, and CI/CD pipelines.
- **Networking & Security**  
  - Azure CNI or Kubenet for networking.  
  - RBAC and Azure Active Directory integration.  
  - Private clusters and network policies.  
- **Monitoring & Diagnostics** – Azure Monitor and Container Insights integration.
- **Hybrid & Multi-Cloud Ready** – Supports Azure Arc to manage Kubernetes clusters across environments.

---

## 🛠️ Common Use Cases
- Running **microservices-based applications** at scale.
- Hosting **stateless and stateful workloads** (web apps, APIs, batch jobs, data pipelines).
- **DevOps automation** using GitOps, CI/CD pipelines, and Infrastructure as Code (IaC).
- **AI/ML model deployment** with GPU-enabled nodes.
- Multi-tenant application hosting with strong security isolation.

---

## 📂 Learning Objectives
After completing this module, you should be able to:
1. Understand Kubernetes fundamentals and how AKS manages them.
2. Create and configure an AKS cluster.
3. Deploy applications using `kubectl` and Helm.
4. Enable monitoring, scaling, and logging.
5. Integrate AKS with Azure services (ACR, Key Vault, Application Gateway, Azure Policy).
6. Apply best practices for cost, performance, and security optimization.

---

## ⚡ Quick Start (Azure CLI)
```bash
# Create a resource group
az group create --name myResourceGroup --location eastus

# Create an AKS cluster with default node pool
az aks create --resource-group myResourceGroup \
  --name myAKSCluster \
  --node-count 3 \
  --enable-addons monitoring \
  --generate-ssh-keys

# Get cluster credentials
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster

# Deploy a sample app
kubectl create namespace demo
kubectl apply -f https://k8s.io/examples/application/deployment.yaml -n demo

# Verify deployment
kubectl get pods -n demo
```
---

## 🧩 Integrations

* **Azure Container Registry (ACR)** – Secure image storage and retrieval.
* **Azure Monitor & Log Analytics** – Centralized observability.
* **Azure Active Directory (AAD)** – RBAC and identity integration.
* **Ingress Controllers (NGINX, App Gateway)** – Load balancing and routing.

---


