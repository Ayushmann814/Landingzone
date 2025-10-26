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