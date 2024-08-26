# Azure Subnet 

## What is a Subnet?

A **Subnet** (short for subnetwork) is a segmented piece of a larger network, typically a virtual network (VNet) in the cloud. Subnets help in organizing and managing network traffic more efficiently by dividing a network into smaller, manageable sections. Each subnet has its own IP address range that falls within the larger VNet address space.

### Key Characteristics of a Subnet:
- **IP Range:** A range of IP addresses that fall within the address space of the VNet.
- **Isolation:** Subnets can isolate different resources or services within a VNet for security and performance reasons.
- **Network Security Group (NSG):** Security rules can be applied to subnets to control inbound and outbound traffic.
- **Service Endpoints:** Subnets can have service endpoints to connect directly to Azure services.

## Uses of Subnets

Subnets are used for various purposes, including:

1. **Isolation of Workloads:**
   - You can separate different tiers of an application, like front-end, middle-tier, and back-end, into different subnets for better security and management.

2. **Traffic Management:**
   - Control traffic flow within a VNet by routing traffic between subnets or between a subnet and the internet.

3. **Security:**
   - Apply security rules using NSGs to control the traffic that flows in and out of each subnet.

4. **Service Segmentation:**
   - Use subnets to connect different Azure services with service endpoints or private link service.


