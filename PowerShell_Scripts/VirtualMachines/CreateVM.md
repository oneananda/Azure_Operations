## CreateVM.ps1 explaination

- $resourceGroupName: Name of the resource group where all resources will be created.
- $location: Azure region where the resources will be deployed.
- $vmName: Name of the virtual machine to be created.
- $adminUsername: Administrator username for the VM.
- $adminPassword: Administrator password for the VM (in a real script, handle passwords securely).


## Create a Resource Group

```
New-AzResourceGroup -Name $resourceGroupName -Location $location
```

- Creates a new resource group with the specified name and location.

## Create a Virtual Network

```
$vnet = New-AzVirtualNetwork -ResourceGroupName $resourceGroupName -Location $location -Name "myVnet" -AddressPrefix "10.0.0.0/16"
```

- Creates a virtual network (myVnet) within the resource group with the address space 10.0.0.0/16.
