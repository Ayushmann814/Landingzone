location = "central india"
resource_group_name = "myResourceGroup"
vnet_name = "myVnet"

subnets =  {
  s1 = {
    name                 = "subnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  s2 = {
    name                 = "subnet2"
    address_prefixes     = ["10.0.2.0/24"]
  }
  s3 = {
    name                 = "subnet3"
    address_prefixes     = ["10.0.3.0/24"]
  }
  s4 = {
    name                 = "subnet4"
    address_prefixes     = ["10.0.4.0/24"]
  }
}
acrs = {
  "acr1" = {
    name                = "containerRegistry1"
    location            = "central india"
    resource_group_name = "milaznonprod-rg"
    sku                 = "Premium"
    
  }
  "acr2" = {
    name                = "containerRegistry2"
    location            = "central india"
    resource_group_name = "milaznonprod-rg"
    sku                 = "Premium"
    
  }
}

ddos_protection_plan = {
  id = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.Network/ddosProtectionPlans/myDdosPlan"
}

dns_servers = [ "10.0.8.1" , "10.0.8.3 "] 

ip_address_pool = {
  ip_add_pool1 = {
    id = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.Network/ipAddressPools/myIpPool"
    number_of_ip_addresses = 5
    
  }
}