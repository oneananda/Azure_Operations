# Azure Firewall Creation

### Log in to Azure Portal:

### Navigate to Azure Firewall:
In the Azure Portal, search for "Azure Firewall" in the search bar and select it.

### Create a New Firewall:

Click on the "Create" button to start the deployment process.

**Configure Basic Settings:**

Subscription: Select the Azure subscription to use.
Resource Group: Create a new resource group or select an existing one.
Region: Choose the Azure region where you want to deploy the firewall.
Name: Provide a unique name for your Azure Firewall instance.

**Configure Firewall Settings:**

Virtual Network: Create a new virtual network or select an existing one. Azure Firewall requires a virtual network with at least one subnet for deployment.
Firewall Subnet: Ensure that the virtual network includes a subnet named AzureFirewallSubnet. If not, create it.

**Review and Create:**

Review your configuration settings and click "Create" to deploy the Azure Firewall. This process may take a few minutes.


## Configure Azure Firewall Rules

### Create Network Rules:
- Navigate to the "Rules" section and select "Network rules."
- Click on "Add rule collection" to create new network rules. Configure rules based on IP addresses, ports, and protocols.

### Create Application Rules:

- Navigate to the "Rules" section and select "Application rules."
- Click on "Add rule collection" to create new application rules. Configure rules based on fully qualified domain names (FQDNs).

### Configure NAT Rules (optional):

- Go to the "Rules" section and select "NAT rules."
- Click on "Add NAT rule collection" to configure NAT rules for translating public IP addresses to private IP addresses.

### Save the configuration


## Testing 

### Conduct Security Testing

**Penetration Testing:**

- Simulate Attacks: Perform controlled penetration tests to simulate potential attacks and ensure the firewall is correctly blocking malicious traffic.
- Use Tools: Test with tools like Nmap or Nessus to scan for open ports and vulnerabilities.