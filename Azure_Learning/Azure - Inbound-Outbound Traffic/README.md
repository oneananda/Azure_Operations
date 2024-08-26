# Azure Services - Inbound/Outbound Traffic Comparison

This table provides a comparison of Azure services based on their typical use for inbound (I), outbound (O), and bidirectional (I/O) traffic.

| Azure Service                    | Inbound Traffic (I) | Outbound Traffic (O) | Bidirectional Traffic (I/O) | Notes                                                      |
|----------------------------------|---------------------|----------------------|-----------------------------|------------------------------------------------------------|
| **Azure Virtual Network NAT**    | No                  | Yes                  | Optionally Yes               | Primarily used for managing outbound Internet connectivity. |
| **Azure Load Balancer**          | Yes                 | No                   | Optionally Yes               | Can be configured for inbound traffic, supports I/O in some cases. |
| **Azure Application Gateway**    | Yes                 | No                   | Optionally Yes               | Primarily for inbound traffic, used for web applications.   |
| **Azure Front Door**             | Yes                 | No                   | Optionally Yes               | Global load balancer for inbound traffic with global reach. |
| **Azure Traffic Manager**        | Yes                 | No                   | Optionally Yes               | DNS-based traffic load balancer for inbound traffic.        |
| **Azure Firewall**               | Yes                 | Yes                  | Yes                          | Supports both inbound and outbound traffic filtering.       |
| **Azure Bastion**                | Yes                 | No                   | Optionally Yes               | Provides secure inbound RDP/SSH access to VMs; outbound limited to the VM. |
| **Azure API Management**         | Yes                 | No                   | Optionally Yes               | Manages inbound API traffic; can also route responses back (I/O). |
| **Azure VPN Gateway**            | Yes                 | Yes                  | Yes                          | Provides secure site-to-site and point-to-site VPN connections (I/O). |
| **Azure ExpressRoute**           | Yes                 | Yes                  | Yes                          | Private connection from on-premises networks to Azure (I/O). |
| **Azure Traffic Analytics**      | No                  | Yes                  | No                           | Analyzes outbound traffic logs; no inbound support.         |
| **Azure Route Server**           | No                  | No                   | Yes                          | Integrates your network appliances to Azure Virtual Network with BGP routing (I/O). |
| **Azure DDoS Protection**        | Yes                 | No                   | Optionally Yes               | Protects inbound traffic; does not directly affect outbound traffic. |
| **Azure Content Delivery Network (CDN)** | Yes            | Yes                  | Yes                          | Accelerates content delivery; can be used for both inbound and outbound traffic. |

## Notes

- **Inbound Traffic (I):** Services that are typically used to manage or facilitate inbound traffic to Azure resources.
- **Outbound Traffic (O):** Services that are typically used to manage or facilitate outbound traffic from Azure resources.
- **Bidirectional Traffic (I/O):** Services that support both inbound and outbound traffic scenarios.
- **Optionally Yes:** Indicates that the service can be configured to support the traffic type but is not primarily designed for it.
- **Strictly Not Used:** Services that are not designed for a particular traffic direction are marked accordingly.
