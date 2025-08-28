## 🎯 Learning Objectives
By the end of this module, you should be able to:
- Understand VM use cases and when to choose VMs over PaaS services.
- Deploy, configure, and manage Azure VMs.
- Apply best practices for cost, security, and availability.
- Automate VM deployments using templates and Infrastructure-as-Code (IaC).
- Monitor and scale VM workloads efficiently.

---

## 🏗️ Key Concepts
- **VM Sizes & Series** – General Purpose (D-series), Compute Optimized (F-series), Memory Optimized (E-series), GPU (NC, NV), Storage Optimized (L-series).
- **Images** – Windows, Linux, custom images, Shared Image Gallery.
- **Storage** – OS Disk, Data Disks, Ephemeral OS disks, Premium SSD, Standard HDD/SSD.
- **Networking** – Public/Private IP, NSG (Network Security Group), Load Balancer, Bastion.
- **Availability** – Availability Sets, Availability Zones, Scale Sets.
- **Identity & Security** – Managed Identities, Key Vault integration, Just-In-Time (JIT) access, Defender for Cloud.
- **Management Tools** – Azure Portal, CLI, PowerShell, ARM/Bicep, Terraform.

---

## 🚀 Hands-On Labs
1. **Create your first VM**
   - Portal: Create a Linux VM (Ubuntu).
   - CLI:  
     ```bash
     az vm create \
       --resource-group MyResourceGroup \
       --name MyVM \
       --image UbuntuLTS \
       --admin-username azureuser \
       --generate-ssh-keys
     ```
2. **Connect to VM**
   - SSH for Linux (`ssh azureuser@<public-ip>`).
   - RDP for Windows (`mstsc /v:<public-ip>`).
3. **Attach a Data Disk**
   - Add and mount a disk to your VM.
4. **Set up Networking**
   - Restrict ports using NSGs.
   - Enable Bastion for secure access.
5. **Enable Auto-Shutdown & Monitoring**
   - Configure auto-shutdown schedule.
   - Enable Azure Monitor metrics and alerts.
6. **Experiment with Availability**
   - Deploy VMs in Availability Set / Zone.
   - Try scaling with VM Scale Sets.

---

## 💰 Cost Optimization
- Use **Spot VMs** for interruptible workloads.
- Resize or deallocate VMs when not in use.
- Apply **Azure Advisor** recommendations.
- Choose the right storage type for workload.
- Automate shutdown during off-hours.

---

## 📊 Monitoring & Management
- **Azure Monitor** – CPU, Disk, Memory metrics.
- **Log Analytics** – Advanced queries and insights.
- **Update Management** – Patch OS and apps.
- **Backup & Recovery** – Azure Backup service.

---

## 🔒 Security Best Practices
- Use **Just-In-Time (JIT) access** to limit RDP/SSH exposure.
- Always integrate with **Azure Key Vault** for secrets/keys.
- Enable **Defender for Cloud** to detect threats.
- Apply **NSGs** and **Azure Firewall** for traffic filtering.

---

## 📚 Further Learning
- [Azure Virtual Machines Documentation](https://learn.microsoft.com/azure/virtual-machines/)
- [Azure CLI VM Docs](https://learn.microsoft.com/cli/azure/vm)
- [Azure Compute Pricing](https://azure.microsoft.com/pricing/details/virtual-machines/)
- [VM Scale Sets Overview](https://learn.microsoft.com/azure/virtual-machine-scale-sets/)

---

## ✅ Summary
Azure VMs provide flexible and powerful compute capabilities.  
They are best suited for:
- Lift-and-shift migrations.
- Custom workloads not supported by PaaS.
- Running legacy applications.
- High-performance or GPU-intensive tasks.

