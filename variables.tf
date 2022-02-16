variable "prefix" {
    description = "prefix to be used for resource group naming"
}

variable "nic_prefix" {
    description = "prefix to be used for nic naming"
}


variable "vm_prefix" {
    description = "prefix to be used for vm naming"
}

variable "resource_group_name" {
    description = "Name of the resource group to be used"
}

variable "resource_location" {
    description = "Location of the resource group"
}

variable "admin_user" {
  description = "username for windows vm"
}

variable "admin_pass" {
  description = "password for windows vm"
}

variable "sql_user" {
  description = "username for sql server"
}

variable "sql_pass" {
  description = "password for sql server"
}

variable sql_license {
    description = "license type for microsoft sql server Pay as you go or azure hybrid benefits"
}

