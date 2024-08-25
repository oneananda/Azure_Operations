# Azure Virtual Network (VNet)

This is a very fundamental part in configuring `Private Network Setup`, it allows us to create a private network within the Azure cloud.

We can deploy various following resources inside VNet

- Virtual Machines (VMs)
- Web Apps
- Databases

## Key points

**Isolation and Security:** This provides an `isolated and private environment` where the Azure resources communicate each other securely,

VNet ensures that resources inside the VNet is `isolated from outside network` unless configured otherwise.

**Address Space:** We can define the `private IP space using CIDR notation`  (e.g., 10.0.0.0/16), which is used to communicate between the resources within VNet.

**Subnets:** Within VNet we can create and `segment smaller and managable networks` within VNet, each subnet will have it's own security and routing congfigurations.

**Connectivity:**

- Internet Access: Resources in a VNet can `access the internet` through Azure’s default routing.
- On-Premises Connectivity: Use `VPN Gateways` or `Azure ExpressRoute` to connect the VNet to on-premises networks securely.
- VNet Peering: `Connect multiple VNets` within the same or different Azure regions to enable communication between them.
- Service Endpoints: Securely connect to Azure services over the Azure backbone network.

**Security:**

- Network Security Groups (NSGs): We can ppply NSGs to control inbound and outbound traffic at the `subnet or network interface level`.
- Azure Firewall: We can configure the `Azure Firewall`, a managed, stateful firewall that protects the network from threats.
- DDoS Protection: Protects against distributed `denial-of-service attacks`.

**Routing:**

- Default Routing: Azure provides `default routing` for traffic within a VNet and to the internet.
- Custom Routes: We can use `custom route tables` to define specific routing rules for the VNet.


