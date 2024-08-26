## Azure Subnet Creation

### 1. Using Azure Portal

1. **Sign in to Azure Portal:**
   - Go to [Azure Portal](https://portal.azure.com) and sign in.

2. **Navigate to Virtual Networks:**
   - In the left-hand menu, click on "Virtual networks."
   - Select the virtual network (VNet) where you want to create the subnet.

3. **Add a Subnet:**
   - Click on "Subnets" in the VNet menu.
   - Click on the "+ Subnet" button.

4. **Configure Subnet Settings:**
   - **Name:** Provide a name for the subnet.
   - **Address range (CIDR block):** Define the IP address range for the subnet (e.g., `10.0.1.0/24`).
   - **Network Security Group (NSG):** (Optional) Associate an NSG.
   - **Route Table:** (Optional) Associate a route table.
   - **Service Endpoints:** (Optional) Enable service endpoints if required.

5. **Review and Create:**
   - Review the settings and click "Create" to add the subnet.


### 2. Using Azure CLI

1. **Open Azure CLI:**
   - Use Azure Cloud Shell or Azure CLI on your local machine.

2. **Run the command:**   

```
   az network vnet subnet create \
     --resource-group <ResourceGroupName> \
     --vnet-name <VNetName> \
     --name <SubnetName> \
     --address-prefix <AddressPrefix>
```

### 3. Using Azure PowerShell

1. **Open Azure PowerShell:**
    - Use Azure Cloud Shell or Azure PowerShell on your local machine.

2. **Run the command:**

```
    $subnetConfig = New-AzVirtualNetworkSubnetConfig -Name <SubnetName> -AddressPrefix <AddressPrefix>
    $vnet = Get-AzVirtualNetwork -ResourceGroupName <ResourceGroupName> -Name <VNetName>
    $vnet | Add-AzVirtualNetworkSubnetConfig -Subnet $subnetConfig
    $vnet | Set-AzVirtualNetwork
```