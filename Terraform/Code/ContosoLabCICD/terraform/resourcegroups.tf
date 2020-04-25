resource "azurerm_resource_group" "rg" {
    name = "${join("-", list("rg", var.app-short-name, var.env-short-name, var.region))}"
    location = var.region

    tags = {
        environment = var.env-short-name,
        region = var.region,
        application = "Contoso"
    }
}