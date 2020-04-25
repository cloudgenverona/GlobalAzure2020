/*
resource "azurerm_network_security_group" "TerraformLabMain" {
  name                = "TerraformLabMainSecurityGroup"
  location            = azurerm_resource_group.TerraformLabMain.location
  resource_group_name = azurerm_resource_group.TerraformLabMain.name
}

resource "azurerm_virtual_network" "TerraformLabMain" {
  name                = "TerraformLabMainVirtualNetwork"
  location            = azurerm_resource_group.TerraformLabMain.location
  resource_group_name = azurerm_resource_group.TerraformLabMain.name
  address_space       = ["192.168.0.0/16"]
  //dns_servers         = ["192.168.0.4", "192.168.0.5"]

  tags = {
    environment = "Production",
    department = "ICS"
  }
}

resource "azurerm_subnet" "TerraformLabMainSubnet_server" {
  name                 = "server"
  resource_group_name  = azurerm_resource_group.TerraformLabMain.name
  virtual_network_name = azurerm_virtual_network.TerraformLabMain.name
  address_prefix = "192.168.1.0/24"
}

resource "azurerm_subnet" "TerraformLabMainSubnet_clients" {
  name                 = "clients"
  resource_group_name  = azurerm_resource_group.TerraformLabMain.name
  virtual_network_name = azurerm_virtual_network.TerraformLabMain.name
  address_prefix = "192.168.2.0/24"
}

resource "azurerm_subnet" "TerraformLabMainSubnet_otherservices" {
  name                 = "otherservices"
  resource_group_name  = azurerm_resource_group.TerraformLabMain.name
  virtual_network_name = azurerm_virtual_network.TerraformLabMain.name
  address_prefix = "192.168.3.0/24"
}

resource "azurerm_subnet_network_security_group_association" "TerraformLabMainSGSubnet" {
  subnet_id                 = azurerm_subnet.TerraformLabMainSubnet_otherservices.id
  network_security_group_id = azurerm_network_security_group.TerraformLabMain.id
}
*/