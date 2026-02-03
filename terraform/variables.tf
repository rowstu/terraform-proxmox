variable "pm_node" {
  default = "pve3"
}

variable "storage" {
  default = "local-lvm"
}

variable "template_vm" {
  description = "Name of the Proxmox VM template to clone"
  default     = "local:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
}

variable "pm_api_url" {}
variable "pm_api_token_id" {}
variable "pm_api_token_secret" {}
