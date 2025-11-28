variable "rg" {
  description = "A map of resource group configurations."
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))

}

variable "vnets" {
  description = "A map of virtual network configurations."
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
    tags                = optional(map(string))
    subnets = optional(list(object({
      name             = string
      address_prefixes = list(string)
    })))
  }))

}

variable "acr" {
  description = "A map of Azure Container Registry configurations."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    sku                 = string
    admin_enabled       = bool
    tags                = optional(map(string))
  }))

}

variable "aks" {
  description = "A map of AKS cluster configurations."
  type = map(object({
    cluster_name     = string
    cluster_location = string
    rg_name          = string
    dns_prefix       = string
    tags             = map(string)
    default_node_pool = object({
      name       = string
      node_count = number
      vm_size    = string
    })
  }))
}

variable "sql_servers" {
  type = map(object({
    name                   = string
    resource_group_name    = string
    location               = string
    administrator_login    = string
    administrator_password = string
    version                = string
  }))
}

variable "sql_database" {
  type = map(object({
    name           = string
    edition        = string
    max_size_gb    = number
    sql_server_key = string
    sku_name       = string
  }))
}