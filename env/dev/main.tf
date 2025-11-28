module "aks_rg" {
  source = "../../module/rg"
  rg     = var.rg


}

module "networking" {
  source     = "../../module/networking"
  vnets      = var.vnets
  depends_on = [module.aks_rg]
}

module "acr" {
  source     = "../../module/acr"
  acr        = var.acr
  depends_on = [module.aks_rg]

}

module "aks_cluster" {
  source       = "../../module/aks"
  aks_clusters = var.aks
  depends_on   = [module.acr, module.networking]
}

module "mssql_server" {
  source      = "../../module/sql_server"
  sql_servers = var.sql_servers
}

module "sql_database" {
  source         = "../../module/sql_database"
  sql_database   = var.sql_database
  sql_server_ids = module.mssql_server.mssql_server_ids
}