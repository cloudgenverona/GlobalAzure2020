variable "TF_VAR_LOCATION" {
    default = "westeurope"
} 
variable "TF_VAR_ARM_SUBSCRIPTION_ID" {
    description = "Main subscrption for Azure provider"
}
variable "TF_VAR_ARM_CLIENT_ID" {
    description = "Client ID for Azure provider"
}
variable "TF_VAR_TENANT_ID" {
    description = "Tenant ID for Azure provider"
}
variable "TF_VAR_CLIENT_SECRET" {
    description = "Client Secret for Azure provider"
}
