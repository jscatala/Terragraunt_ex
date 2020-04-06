module "lb" {
  source      = "git@github.com:jscatala/DOModules_LoadBalancer.git?ref=v0.0.1"
  name        = "loadbalancer-1"
  region      = var.region
  droplet_ids = module.do.servers_ids
}
