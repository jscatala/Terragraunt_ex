module "do" {
  source = "git@github.com:jscatala/DOModules_Droplet.git?ref=v0.0.1"

  machines    = 1
  image       = var.image
  server_name = var.server_name
  region      = var.region
  size        = var.size
  ssh_fp      = var.ssh_fp
}

