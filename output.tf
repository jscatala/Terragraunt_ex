output "server_ip" {
  value = digitalocean_droplet.do.ipv4_address
}
