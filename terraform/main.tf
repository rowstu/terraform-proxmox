resource "proxmox_vm_qemu" "github_runner" {
  name        = "github-runner"
  target_node = var.pm_node
  clone       = var.template_vm

  cpu {
    cores = 2
  }
  memory = 2048

  disks {
    scsi {
      scsi0 {
        disk {
          size    = 20
          storage = var.storage
        }
      }
    }
  }

  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
}
