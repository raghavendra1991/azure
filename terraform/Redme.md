#### resource group
- name of the resource group
- region
- tags: name & value(date of creation)
#### Network Security Group
- select resource group
- name of the security group
- region
- tags: name & value(date of creation)
#### Network Security Rules
- Source
- Destination Port range like(8080, 80, 22, 3306)
- priority 100 (Rules are processed in priority order; the lower the number, the higher the priority)
- protocol Tcp, 
- action or access "Allow"
- name "AllowSSH" defined name of rule
- source_port_range "*"
- direction "Inbound"
- source_address_prefix  "*"
- destination_address_prefix "*"
- attached resource group and network security group
#### virtual network
- select resource group
- name of the virtual network
- region
- tags: name & value(date of creation)
- address_space 10.0.0.0/24
#### subnet
- Name
- Subnet address range 10.0.0.0/24
- Nat gateway
- Network security group
- Route table
#### Newtwork Interface
- select resource group
- name of the virtual network
- region
- tags: name & value(date of creation)
- select virtual network
- select subnet
- private_ip_address_allocation  "Dynamic"
#### public ip
- select resource group
- region
- tags: name & value(date of creation)
- allocation_method Dynamic
#### virtual machine creation
- select resource group
- name of the virtual machine
- region 
- availability zone
- image

- os - profile 
    * ssh key or
    * username & password

- storage_image_reference
    * publisher = "Canonical"
    * offer     = "UbuntuServer"
    * sku       = "16.04-LTS"
    * version   = "latest"

- select virtual network
- select network interface

## vm creation
- basics
- Disks
- Networking
- Management
- Monitoring
- Advanced
- Tags
- Review & create
