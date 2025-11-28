variable "sql_database" {
  type = map(object({
    name           = string
    edition        = string
    max_size_gb    = number
    sql_server_key = string
    sku_name       = string
  }))
}

variable "sql_server_ids" {
  type = map(object({
    id = string
  }))
}
