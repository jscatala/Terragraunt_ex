module "lb" {
  lb_depends_on = [module.do]

  source      = "git@github.com:jscatala/DOModules_LoadBalancer.git?ref=v0.0.2"
  name        = "loadbalancer-1"
  region      = var.region
  droplet_ids = [module.do]

}
