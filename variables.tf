###cloud vars


variable "cloud_id" {
  type          = string
  default       = "b1gsv0iedv4orkas8lug"
  description   = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type          = string
  default       = "b1gjbqa87bvhrtjk7g6e"
  description   = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vpc_name_db" {
  type        = string
  default     = "develop_db"
  description = "subnet name for db"
}
variable "db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
###ssh vars

# variable "vms_ssh_root_key" {
#   type        = string
#   default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEml69N08IPCLKQbAblsCvXhPh0Z6UN2goeK3ijLQPr5"
#   description = "ssh-keygen -t ed25519"
# }

