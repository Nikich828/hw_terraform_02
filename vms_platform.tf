variable "vm_web_family" {
  type          = string
  default       = "ubuntu-2004-lts"
  description   = "ubuntu version"
}

##variable "vm_web_name" {
 ## type          = string
  ##default       = "netology-develop-platform-web"
 ## description   = "instance name"
  
##}

variable "vm_web_platform_id" {
  type          =  string
  default       = "standard-v1"
  description   = "platform id"
}

# variable "vm_web_cores" {
#   type          = string
#   default       = "2"
#   description   = "vCPU"
  
# }

# variable "vm_web_memory" {
#   type          = string
#   default       = "1"
#   description   = "VM memory"
# }

# variable "vm_web_core_fraction" {
#   type          = string
#   default       = "5"
#   description   = "core fraction"
# }


variable "vm_db_family" {
  type          = string
  default       = "ubuntu-2004-lts"
  description   = "ubuntu version"
}

##variable "vm_db_name" {
  ##type          = string
  ##default       = "netology-develop-platform-db"
  ##description   = "instance name"
  
##}

variable "vm_db_platform_id" {
  type          =  string
  default       = "standard-v1"
  description   = "platform id"
}

# variable "vm_db_cores" {
#   type          = string
#   default       = "2"
#   description   = "vCPU"
  
# }

# variable "vm_db_memory" {
#   type          = string
#   default       = "2"
#   description   = "VM memory"
# }

# variable "vm_db_core_fraction" {
#   type          = string
#   default       = "20"
#   description   = "core fraction"
# }

variable "vms_resources" {
  type = map(object({
    cores               = number
    memory              = number
    core_fraction       = number
  }))
  description = "resources for all vm"
  default = {
    vm_web_resources = {
      cores             = 2
      memory            = 2
      core_fraction     = 5
    }
    vm_db_resources     = {
      cores             = 2
      memory            = 4
      core_fraction     = 20
    }
  }
}
variable "metadata" {
  type = map(object({
    serial-port-enable  = string
    ssh-keys            = string
  }))
  description = "ssh-keygen -t ed25519"
  default = {
    first_pub_key = {
        serial-port-enable  = "1"
        ssh-keys            = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEml69N08IPCLKQbAblsCvXhPh0Z6UN2goeK3ijLQPr5"
    }
  }
}