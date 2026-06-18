###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default="b1g51e8snmd071om17j0"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default="b1gkfhvrdn8er82j6v3s"
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


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICxxS52ZGJ9qacOsqCJ2OF27Gq98Bc55mLF/feV5W5td sokolov.k2@wildberries.work"
  description = "ssh-keygen -t ed25519"
}

## yandex_compute_image

variable "image" {
  type        = string
  default     = "ubuntu-2204-lts"
  description = "VPC network & subnet name"
}

## yandex_compute_instance

variable "vm_prefix" {
  type        = string
  default     = "vm_web"
  description = "К названиям переменных ВМ добавьте в начало префикс vm_web_"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "К названиям переменных ВМ добавьте в начало префикс vm_web_"
}

variable "vm_web_platform" {
  type        = string
  default     = "standard-v3"
  description = "К названиям переменных ВМ добавьте в начало префикс vm_web_"
}