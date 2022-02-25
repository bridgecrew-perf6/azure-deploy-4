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

# Define Sql_VM variables
variable "sql_vm_prefix" {
  description = "prefix to be used for vm naming"
}

variable "sql_vm_size" {
  description = "Size "
}

variable "sql_admin_user" {
  description = "username for windows vm"
}

variable "sql_admin_pass" {
  description = "password for windows vm"
}

variable "sql_os_caching" {
  description = "Type of Caching for VM OS"
}

variable "sql_os_storage_type" {
  description = "Configures data redundancy storage"
}

variable "sql_source_publisher" {
  description = "Publisher for source image reference"
}
variable "sql_source_offer" {
  description = "Offer for source image reference"
}

variable "sql_source_sku" {
  description = "Sku for source image reference"
}

variable "sql_source_version" {
  description = "Version for source image reference"
}

# Define Storefront VM variables
variable "sf_vm_prefix" {
  description = "prefix to be used for vm naming"
}

variable "sf_vm_size" {
  description = "Size "
}

variable "sf_admin_user" {
  description = "username for windows vm"
}

variable "sf_admin_pass" {
  description = "password for windows vm"
}

variable "sf_os_caching" {
  description = "Type of Caching for VM OS"
}

variable "sf_os_storage_type" {
  description = "Configures data redundancy storage"
}

variable "sf_source_publisher" {
  description = "Publisher for source image reference"
}
variable "sf_source_offer" {
  description = "Offer for source image reference"
}

variable "sf_source_sku" {
  description = "Sku for source image reference"
}

variable "sf_source_version" {
  description = "Version for source image reference"
}

# Define DDC VM variables
variable "ddc_vm_prefix" {
  description = "prefix to be used for vm naming"
}

variable "ddc_vm_size" {
  description = "Size for DDC VM"
}

variable "ddc_admin_user" {
  description = "username for windows vm"
}

variable "ddc_admin_pass" {
  description = "password for windows vm"
}

variable "ddc_os_caching" {
  description = "Type of Caching for VM OS"
}

variable "ddc_os_storage_type" {
  description = "Configures data redundancy storage"
}

variable "ddc_source_publisher" {
  description = "Publisher for source image reference"
}
variable "ddc_source_offer" {
  description = "Offer for source image reference"
}

variable "ddc_source_sku" {
  description = "Sku for source image reference"
}

variable "ddc_source_version" {
  description = "Version for source image reference"
}

# Define VDA VM variables
variable "vda_vm_prefix" {
  description = "prefix to be used for vm naming"
}

variable "vda_vm_size" {
  description = "Size "
}

variable "vda_admin_user" {
  description = "username for windows vm"
}

variable "vda_admin_pass" {
  description = "password for windows vm"
}

variable "vda_os_caching" {
  description = "Type of Caching for VM OS"
}

variable "vda_os_storage_type" {
  description = "Configures data redundancy storage"
}

variable "vda_source_publisher" {
  description = "Publisher for source image reference"
}
variable "vda_source_offer" {
  description = "Offer for source image reference"
}

variable "vda_source_sku" {
  description = "Sku for source image reference"
}

variable "vda_source_version" {
  description = "Version for source image reference"
}

# Define SQL Server credentials
variable "sql_license_type" {
  description = "sql license type"
}

variable "sql_user" {
  description = "username for sql server connectivity updates"
}

variable "sql_pass" {
  description = "password for sql server connectivity updates"
}
