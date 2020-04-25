/*
resource "azurerm_network_interface" "nic" {
    name = "${join("-", list("nic", var.app-short-name, var.env-short-name, var.region))}"
    location            = "${azurerm_resource_group.rg.location}"
    resource_group_name = "${azurerm_resource_group.rg.name}"
  
    ip_configuration {
        name = "${join("-", list("ipconf", var.app-short-name, var.env-short-name, var.region))}"
        subnet_id = "${azurerm_subnet.internal.id}"
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment = var.env-short-name,
        region = var.region
    }
 }
resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnetmain.name
  address_prefix       = "10.0.2.0/24"
}
 resource "azurerm_virtual_network" "vnetmain" {
    name = "${join("-", list("vnet", var.app-short-name, var.env-short-name, var.region))}"
    address_space       = ["10.0.0.0/16"]
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
}

 resource "azurerm_virtual_machine" "vm" {
    name = "${join("-", list("vm", var.app-short-name, var.env-short-name, var.region))}"
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    network_interface_ids = ["${azurerm_network_interface.nic.id}"]
    vm_size = "Standard_DS1_v2"
    
    delete_os_disk_on_termination = true
    delete_data_disks_on_termination = true

   storage_image_reference {
     publisher = "Canonical"
     offer     = "UbuntuServer"
     sku       = "16.04-LTS"
     version   = "latest"
   }
   storage_os_disk {
     name              = "myosdisk1"
     caching           = "ReadWrite"
     create_option     = "FromImage"
     managed_disk_type = "Standard_LRS"
   }
   os_profile {
     computer_name  = "hostname"
     admin_username = "contosoadmin"
     admin_password = "Password1234!"
   }
   os_profile_linux_config {
     disable_password_authentication = false
   }
   tags = {
        environment = var.env-short-name,
        region = "var.region
   }
} 
*/