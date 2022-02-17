# define prefix variables
variable "prefix" {
    description = "prefix to be used for resource group naming"
}

# Define rg config variables
variable "resource_group_name" {
    description = "Name of the resource group to be used"
}

variable "resource_location" {
    description = "Location of the resource group"
}

# Define NIC variables
variable "nic_prefix" {
    description = "prefix to be used for nic naming"
}

variable "private_ip_allocation" {
  description = "Dynamic / Static IP allocation"
}

# Define Windows VM variables
variable "vm_prefix" {
    description = "prefix to be used for vm naming"
}

variable "admin_user" {
  description = "username for windows vm"
}

variable "admin_pass" {
  description = "password for windows vm"
}

# Define SQL Server credentials
variable "sql_license_type" {
    description = "name of the mysql server"
}

variable "sql_user" {
  description = "username for sql server"
}

variable "sql_pass" {
  description = "password for sql server"
}
