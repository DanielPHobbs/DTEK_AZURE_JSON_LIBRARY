# Standalone NAT VM for VM-Series deployed from Azure Marketplace
Azure currently supports a single public IP per VM. This section provides information on how to configure a NAT VM in front of the Untrust interface of VM-Series. You can also use a 3rd party load balancer in front of VM-Series to scale out 1/more firewalls. See technical documentation for information on deploying VM-Series from Azure Marketplace.

# Deprecated, Replaced aka Not needed

This template is not needed anymore since Azure supports multiple public IP's since February 2017. This feature in Azure allows you to assign 1/more public IP's to any NIC of a multi-NIC VM like VM-Series. For simple, pilot or PoC, scenarios you can use the [Two-tier Sample template](https://github.com/PaloAltoNetworks/azure/tree/master/two-tier-sample). And, for other use cases that need a scale out architecture, use the [Application Gateway Template](https://github.com/PaloAltoNetworks/azure-applicationgateway). 

If you have previously used the NAT template previously, then you can assign the NAT VM's public IP to the VM-Series firewall's untrust (eth1) interface, and then delete the NAT VM related items: NAT VM, NAT subnet and NAT UDR. Traffic from the Internet now will come directly to the untrust interface of VM-Series.

## Reference Links

- [Technical documentation](https://www.paloaltonetworks.com/documentation/71/virtualization/virtualization/set-up-the-vm-series-firewall-in-azure)
- [VM-Series Datasheet](https://www.paloaltonetworks.com/products/secure-the-network/virtualized-next-generation-firewall/vm-series-for-azure)
- [Deploying ARM Templates](https://azure.microsoft.com/en-us/documentation/articles/resource-group-template-deploy/#deploy-with-azure-cli)
