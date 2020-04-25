variable "region" {
    type = string
    description = "Primary region to which the tracing resources are deployed."
}

variable "env-short-name" {
    type = string
    description = "An abbreviated version of the environment name."
}

variable "app-short-name" {
    type = string
    description = "An abbreviated version of the application name."
}