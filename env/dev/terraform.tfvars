rg = {
  rg1 = {
    name     = "dev-rg1"
    location = "centralindia"
    tags = {
      environment = "dev"
      project     = "aks-infra"
    }
  }
}

vnets = {
  vnet1 = {
    name                = "dev-vnet1"
    address_space       = ["10.0.0.0/16"]
    location            = "centralindia"
    resource_group_name = "dev-rg1"
    tags = {
      environment = "dev"
      project     = "aks-infra"
    }
    subnets = [
      {
        name             = "dev-subnet1"
        address_prefixes = ["10.0.1.0/24"]
      },

      {
        name             = "dev-subnet2"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}

acr = {
  acr1 = {
    name                = "devaksacr1"
    resource_group_name = "dev-rg1"
    location            = "centralindia"
    sku                 = "Basic"
    admin_enabled       = true
    tags = {
      environment = "dev"
      project     = "aks-infra"
    }
  }
}

aks = {
  aks1 = {
    cluster_name     = "dev-cluster143"
    cluster_location = "centralindia"
    rg_name          = "dev-rg1"
    dns_prefix       = "devakscluster1"
    tags = {
      environment = "dev"
      project     = "aks-infra"
    }
    default_node_pool = {
      name       = "agentpool"
      node_count = 2
      vm_size    = "standard_d2s_v5"
    }
  }
}


sql_servers = {
  mssqlserver1 = {
    name                   = "mssqlserver1777"
    resource_group_name    = "dev-rg1"
    location               = "centralindia"
    administrator_login    = "sqladmin"
    administrator_password = "Password1234!"
    version                = "12.0"
  }
}

sql_database = {
  db1 = {
    name           = "mydb1"
    edition        = "Basic"
    max_size_gb    = 2
    sql_server_key = "mssqlserver1"
    sku_name       = "Basic"
  }
}

