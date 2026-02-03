# LXC Containers
resource "proxmox_lxc" "debian" {
  count = 3

  hostname    = "dev-lxc-${count.index + 1}"
  ostemplate  = var.template
  target_node = var.pm_node
  password    = "password123" # quick-and-dirty

  cores  = 2
  memory = 1024
  swap   = 512

  rootfs {
    storage = var.storage
    size    = "8G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
    type   = "veth"
  }

  # optional: start containers automatically
  onboot = true
}