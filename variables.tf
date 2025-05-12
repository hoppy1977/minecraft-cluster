// Global variables
variable "location" {
  description = "Azure region"
  type        = string
  default     = "australiasoutheast"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "minecraft"
}


// AKS variables
variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "hopatechminecraft"
}

variable "aks_node_pool_name" {
  description = "The name of the AKS node pool"
  type        = string
  default     = "default"
}

variable "aks_node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 1
}

variable "aks_vm_size" {
  description = "VM size for AKS node pool"
  type        = string
  default     = "Standard_B2s"
}

variable "aks_dns_prefix" {
  description = "The DNS prefix to use for the AKS cluster."
  type        = string
  default     = "hopatechminecraft"
}


// Log analytics workspace variables
variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics Workspace"
  type        = string
  default     = "hopatechminecraft"
}

variable "log_analytics_workspace_sku" {
  description = "The SKU of the Log Analytics Workspace"
  type        = string
  default     = "PerGB2018"
}

variable "log_analytics_workspace_retention_in_days" {
  description = "The retention period in days for the Log Analytics Workspace"
  type        = number
  default     = 30
}


// Storage account variables
variable "storage_account_name" {
  description = "Globally unique name of the storage account"
  type        = string
  default     = "hopatechminecraftbedrock"
}

variable "share_names" {
  description = "List of file share names"
  type        = list(string)
  default     = ["share1", "share2"]
}
