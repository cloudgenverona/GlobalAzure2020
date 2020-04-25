
terraform {
    backend "remote" {
        organization = "ContosoLab"

        workspaces {
            name = "ContosoLab"
        }
    }
}

provider "azurerm" {
    tenant_id = var.TF_VAR_TENANT_ID
    subscription_id = var.TF_VAR_ARM_SUBSCRIPTION_ID
    client_id = var.TF_VAR_ARM_CLIENT_ID
    client_secret = var.TF_VAR_CLIENT_SECRET

    features {}
}

