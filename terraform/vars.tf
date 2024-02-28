variable "rg" {
    description = "resource group"
    type = string
    default = "rg-demo"
}

variable "rg_nsg" {
    description = "network security group"
    type = string
    default = "rg-nsg"
}

variable "rg_vnet" {
    description = "virtual network"
    type = string
    default = "rg-vnet"
}

variable "rg_pub_ip" {
    description = "public ip address"
    type = string
    default = "rg-public-ip"
}

variable "rg_nic" {
    description = "network interface"
    type = string
    default = "rg-nic-ip"
}

variable "rg-subnet" {
    description = "subnet"
    type = string
    default = "rg-subnet"
}
