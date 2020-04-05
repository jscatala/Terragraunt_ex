resource "digitalocean_droplet" "do" {
  image    = var.image
  name     = var.server_name
  region   = var.region
  size     = var.size
  ssh_keys = var.ssh_fp
}

