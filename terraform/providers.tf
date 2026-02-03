terraform {
  required_version = ">= 1.1.0"
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.2-rc07"
    }
  }
}

provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://pve2.rownet.local:8006/api2/json"
    pm_api_token_secret = "d6d4c86a-42e7-40b7-b0aa-3e6e64fa478c"
    pm_api_token_id = "root@pam!terraform"
}