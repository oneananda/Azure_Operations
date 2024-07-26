# Variables
$resourceGroupName = "myResourceGroup"
$location = "EastUS"
$vmName = "myVM"
$adminUsername = "azureuser"
$adminPassword = "P@ssw0rd1234!"

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a virtual network
$vnet = New-AzVirtualNetwork -ResourceGroupName $resourceGroupName -Location $location -Name "myVnet" -AddressPrefix "10.0.0.0/16"

# Create a subnet
$subnet = Add-AzVirtualNetworkSubnetConfig -Name "mySubnet" -AddressPrefix "10.0.0.0/24" -VirtualNetwork $vnet
$vnet | Set-AzVirtualNetwork

# Create a public IP address
$publicIp = New-AzPublicIpAddress -ResourceGroupName $resourceGroupName -Location $location -Name "myPublicIP" -AllocationMethod Dynamic

# Create a network security group
$nsg = New-AzNetworkSecurityGroup -ResourceGroupName $resourceGroupName -Location $location -Name "myNetworkSecurityGroup"

# Create a NIC
$nic = New-AzNetworkInterface -ResourceGroupName $resourceGroupName -Location $location -Name "myNIC" -SubnetId $subnet.Id -PublicIpAddressId $publicIp.Id -NetworkSecurityGroupId $nsg.Id

# Create a virtual machine
$vmConfig = New-AzVMConfig -VMName $vmName -VMSize "Standard_DS1_v2" | `
            Set-AzVMOperatingSystem -Windows -ComputerName $vmName -Credential (New-Object System.Management.Automation.PSCredential($adminUsername, (ConvertTo-SecureString $adminPassword -AsPlainText -Force))) | `
            Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version "latest" | `
            Add-AzVMNetworkInterface -Id $nic.Id

New-AzVM -ResourceGroupName $resourceGroupName -Location $location -VM $vmConfig
