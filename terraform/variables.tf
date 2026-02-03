variable "pm_node" {
  default = "pve3"
}

variable "storage" {
  default = "local-lvm"
}

variable "template_vm" {
  default = "local:ubuntu24-template"
}

variable "pm_api_url" {}
variable "pm_api_token_id" {}
variable "pm_api_token_secret" {}
