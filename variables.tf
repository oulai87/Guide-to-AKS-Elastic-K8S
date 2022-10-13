variable "acr" {
  default = "aksCRegistrydemodev"
}


variable "location" {
  default = "eastus"
}


locals {
  common_name = "Azure_K8S"
}


variable "address_space" {
  default = ["10.1.0.0/16", "10.1.0.0/24", "10.1.0.0/32"]
}

variable "dns_prefix" {
  default = "azurek8sdemo"
}


variable "agent_pool" {
  default = ["defaultpool","Standard_D2s_v3"]
}



variable "tags" {
  default = {
    terraform = "yes",
    resource  = "AKS",
    purpose   = "demo"
  }
}

variable "network_profile" {
  default = ["azure", "kubenet", "Standard"]
}

variable "publicip_sku" {
  default = ["Basic","Standard"]
}