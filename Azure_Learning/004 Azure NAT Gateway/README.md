# Azure NAT Gateway

Azure NAT Gateway - Network Address Translation (NAT) service that provides outbound Internet connectivity for resources in an Azure Virtual Network (VNet) without exposing them to inbound public traffic. It enables virtual machines (VMs), containers, and other resources within a VNet to communicate with external services while maintaining their private IP addresses.

## Key Features

- Outbound Connectivity: Using Azure NAT Gateway the resouces present in VNet will make outbound connections via a single public static IP address.
- Static Public IP Address: Uses static public IP addresses to route the private IP addresses in the VNet
- Scalability: This can scale to large number of concurrent users, making it suitable for large enterprises with high outbound connections
- High Availablity: This is a fully managed service, with built-in redundancy ensuring high availablity







