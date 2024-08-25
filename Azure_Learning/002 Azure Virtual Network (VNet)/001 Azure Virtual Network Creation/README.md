# Creating an Azure Virtual Network (VNet)

Follow these steps to create a Virtual Network (VNet) in Azure using the Azure Portal:

## 1. Access the Azure Portal

1. Go to [Azure Portal](https://portal.azure.com).

## 2. Navigate to Virtual Networks

1. In the left-hand menu, select **"Virtual networks"** or search for **"Virtual networks"** in the search bar.

## 3. Create a New VNet

1. Click on the **"+ Create"** button to start the VNet creation process.

2. Fill in the required details:
   - **Subscription**: Select the Azure subscription you want to use.
   - **Resource Group**: Choose an existing resource group or create a new one.
   - **Name**: Provide a name for your VNet.
   - **Region**: Select the Azure region where you want to deploy the VNet.

3. Click **"Next"** to proceed to the **"IP Addresses"** tab.

## 4. Configure IP Addresses

1. **IPv4 Address Space**: Define the IP address range for your VNet. Use CIDR notation (e.g., `10.0.0.0/16`).

2. **Subnets**: Add subnets within the VNet. Provide a name and IP address range for each subnet (e.g., `10.0.1.0/24` for a subnet).

## 5. Configure Security (Optional)

1. **Network Security Groups**: Associate NSGs with your subnets to control traffic.

2. **DDoS Protection**: Enable DDoS protection if needed.

## 6. Review and Create

1. Review your configuration.

2. Click **"Create"** to deploy the VNet.
