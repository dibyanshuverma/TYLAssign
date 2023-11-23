#Resource Groups
location                 = "uksouth"
hub_spoke_resource_group = ["hub-vnet-rg", "spoke-vnet-rg"]

#Hub vnet
hub_vnet_name               = "hub-vnet-suk"
hub_network_address_prefix  = ["192.168.96.0/22"]
hub_subnet_names            = ["hub-subnet1", "hub-subnet2"]
hub_subnet_address_prefixes = ["192.168.96.0/27", "192.168.97.32/28"]
hub_network_dns_servers     = ["192.168.104.196"]
hub_service_endpoints       = [["Microsoft.Stirage"], ["Microsoft.KeyVault"]]


#Spoke vnet
spoke_vnet_name               = "spoke-vnet-suk"
spoke_network_address_prefix  = ["192.168.102.0/22"]
spoke_subnet_names            = ["spoke-subnet1", "hubspoke-subnet2"]
spoke_subnet_address_prefixes = ["192.168.102.0/27", "192.168.103.32/28"]
spoke_network_dns_servers     = ["192.168.12.11"]
spoke_service_endpoints       = [["Microsoft.Stirage"], ["Microsoft.KeyVault"]]


#Storage Account 
storage_account_name             = "demo-stoarge-account"
account_tier_storage             = "Standard"
account_replication_type_storage = "LRS"
public_network_access_enabled    = false
min_tls_version                  = "1.2"


#Express route

erc_name              = "demo_erc"
resource_group_name   = "hub-vnet-rg"
service_provider_name = "demosp"
peering_location      = "ukwest"
bandwidth             = 50
sku_family            = "MeteredData"
sku_tier              = "Standard"


#AKS Cluster

aks_resource_group_name           = "pvt-aks-rg"
network_rg                        = "spoke-vnet-rg"
subnet_name                       = "spoke-subnet1"
kv_name                           = "pvt-aks-kv"
kv_rg                             = "demo_kv_rg"
sp_password_secret                = "sp_pwd_secret"
aks_version                       = "1.14.8"
private_cluster_enabled           = true
node_pool_name                    = "agentpool"
node_pool_type                    = "VirtualMachineScaleSets"
enable_auto_scaling               = true
node_count                        = 2
node_size                         = "Standard_DS2_V2"
os_disk_size                      = "50"
max_pods                          = 10
min_count                         = 2
max_count                         = 5
service_cidr                      = "172.16.1.0/26"
dns_service_ip                    = "172.16.1.3"
sp_id                             = "a00dsgjdg-26571-ggsdjfgdjgsdg-dskgfkgjs"
role_based_access_control_enabled = true
tags                              = { "env" = "dev" }
node_resource_group               = "pvt-aks-rg"
aks_name                          = "demo-pvt-aks"
