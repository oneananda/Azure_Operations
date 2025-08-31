# 011 Azure Container Instances (ACI) & Azure Container Apps (ACA)

## 📌 Overview
Azure offers two lightweight options for running containers without managing complex infrastructure:

- **Azure Container Instances (ACI):**  
  Run a single container or a group of containers directly in Azure. Ideal for short-lived tasks, batch jobs, or lightweight APIs.

- **Azure Container Apps (ACA):**  
  A managed container platform for running microservices and event-driven applications. Built on Kubernetes and Envoy, but fully serverless — scaling in/out automatically.

---

## 🎯 Learning Objectives
By the end of this module, you should be able to:
- Understand when to use **ACI** vs **ACA**.
- Deploy and manage containerized apps with minimal infrastructure overhead.
- Configure scaling, networking, and monitoring.
- Integrate with Azure DevOps / GitHub Actions for CI/CD.
- Optimize costs and security for container workloads.

---


## 🏗️ Key Concepts

### Azure Container Instances (ACI)
- **Fast startup** — launch containers in seconds.
- **Stateless / stateful** — support ephemeral or attached persistent Azure Files.
- **Networking** — public IP, VNet integration, DNS labels.
- **Execution models** — run continuously or schedule jobs.
- **Use cases** — dev/test workloads, CI/CD tasks, simple APIs, batch processing.

### Azure Container Apps (ACA)
- **Microservices ready** — scale apps, APIs, and event-driven services.
- **Autoscaling (KEDA)** — scale to zero on events (HTTP, queues, Kafka, etc.).
- **Service-to-service communication** with mTLS and Dapr sidecars.
- **Revisions** — easy rollouts, blue/green or canary deployments.
- **Use cases** — production APIs, background workers, event-driven microservices.

---
