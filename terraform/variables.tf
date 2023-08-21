variable "location" {
  type        = string
  description = "The Azure region in which all resources are deployed."
  default     = "westeurope"
}

variable "platform_management_subscription" {
  type        = string
  description = "Platform Management subscription"
  default     = "118e8440-9a31-46bb-af84-1a6e46b3473b" # BGA
}

variable "postgresql_admin_name" {
  default     = "sql"
  description = "Name of the PostgreSQL Server Admin."
}

variable "postgresql_admin_password" {
  default     = "Admin123456!"
  description = "Password of the PostgreSQL Server Admin."
}

variable "postgresql_sku_name" {
  default     = "B_Gen5_1"
  description = "SKU of the PostgreSQL Server."
}

variable "postgresql_storage_size" {
  type        = number
  default     = 51200
  description = "Storage size of the PostgreSQL Server em MB."
}

variable "postgresql_backup_retention_days" {
  type        = number
  default     = 7
  description = "Backup retention days for PostgreSQL Server."
}


