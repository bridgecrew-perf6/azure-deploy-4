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

# Define VM variables
variable "vm_prefix" {
  description = "prefix to be used for vm naming"
}

variable "vm_size" {
  description = "Size "
}

variable "admin_user" {
  description = "username for windows vm"
}

variable "admin_pass" {
  description = "password for windows vm"
}

variable "os_caching" {
  description = "Type of Caching for VM OS"
}

variable "os_storage_type" {
  description = "Configures data redundancy storage"
}

variable "source_publisher" {
  description = "Publisher for source image reference"
}
variable "source_offer" {
  description = "Offer for source image reference"
}

variable "source_sku" {
  description = "Sku for source image reference"
}

variable "source_version" {
  description = "Version for source image reference"
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
