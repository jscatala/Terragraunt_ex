output "server_ip" {
  value = module.do.servers_ips
}

output "server_ids" {
  value = module.do.servers_ids
}

output "lb_ip" {
  value = module.lb.loadbalancer_ip
}
