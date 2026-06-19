## yandex_compute_instance

# variable "vm_prefix" {
#   type        = string
#   default     = "vm_web"
#   description = "К названиям переменных ВМ добавьте в начало префикс vm_web_"
# }

# variable "vm_web_name" {
#   type        = string
#   default     = "netology-develop-platform-web"
#   description = "К названиям переменных ВМ добавьте в начало префикс vm_web_"
# }

variable "vm_web_platform" {
  type        = string
  default     = "standard-v3"
  description = "К названиям переменных ВМ добавьте в начало префикс vm_web_"
}

## vm_db_

# variable "vm_db_name" {
#   type        = string
#   default     = "netology-develop-platform-db"
#   description = "К названиям переменных ВМ добавьте в начало префикс vm_web_"
# }

variable "vm_db_platform" {
  type        = string
  default     = "standard-v3"
  description = "К названиям переменных ВМ добавьте в начало префикс vm_web_"
}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 20
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "metadata" {
  type = map(string)
  default = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICxxS52ZGJ9qacOsqCJ2OF27Gq98Bc55mLF/feV5W5td sokolov.k2@wildberries.work"
  }
}

## subnet

variable "subnet-name-b" {
  type        = string
  default     = "develop-ru-central1-b"
}

variable "zone-b" {
  type        = string
  default     = "ru-central1-b"
}

variable "cidr-b" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
