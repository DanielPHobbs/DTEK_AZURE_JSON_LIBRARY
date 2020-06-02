# VM-Series with NAT VM, and VM's for Web and DB subnet

This ARM template deploys a VM-Series next generation firewall VM in an Azure resource group alongwith the following resources similar to a typical two tier architecture. It also adds the relevant User-Defined Route (UDR) tables to send all traffic through the VM-Series firewall.

# Deprecated, Replaced aka Not needed

This template is not needed anymore since Azure supports multiple public IP's since February 2017. This feature in Azure allows you to assign 1/more public IP's to any NIC of a multi-NIC VM like VM-Series. For simple, pilot or PoC, scenarios you can use the [Two-tier Sample template](https://github.com/PaloAltoNetworks/azure/tree/master/two-tier-sample). And, for other use cases that need a scale out architecture, use the [Application Gateway Template](https://github.com/PaloAltoNetworks/azure-applicationgateway). 

If you have previously used the NAT template previously, then you can assign the NAT VM's public IP to the VM-Series firewall's untrust (eth1) interface, and then delete the NAT VM related items: NAT VM, NAT subnet and NAT UDR. Traffic from the Internet now will come directly to the untrust interface of VM-Series.
