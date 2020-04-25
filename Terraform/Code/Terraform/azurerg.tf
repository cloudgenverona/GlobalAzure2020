resource "azurerm_resource_group" "TerraformLabMain" {
  name     = "TerraformLab-Main-RG"
  location = "westeurope"
  
  tags = {
    environment = "Production",
    department = "Service Delivery"
  }
}