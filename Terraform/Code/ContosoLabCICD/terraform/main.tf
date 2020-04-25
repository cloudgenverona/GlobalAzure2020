
terraform {
    required_version = ">= 0.12.9"

    backend "azurerm" {
        key                  = "contosolab.tfstate"
    }
}

provider "azurerm" {
    features {}
}

