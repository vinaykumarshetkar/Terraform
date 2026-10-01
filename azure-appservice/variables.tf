
variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource group for VM infrastructure"
  type        = string
  default     = "vm-rg"
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
  default     = "vinay-vm"
}

variable "admin_username" {
  description = "VM administrator username"
  type        = string
  default     = "azureuser"
}