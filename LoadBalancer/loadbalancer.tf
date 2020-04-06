data "terraform_remote_state" "do" {
  backend = "s3"

  config = {
    bucket     = var.bucket 
    key        = var.key
    access_key = var.access_key
    secret_key = var.secret_key
    endpoint   = "https://sfo2.digitaloceanspaces.com"
    region = "us-west-1"
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_metadata_api_check     = true
  }
}

module "lb" {
  source      = "git@github.com:jscatala/DOModules_LoadBalancer.git?ref=v0.0.2"
  name        = "loadbalancer-1"
  region      = var.region
  droplet_ids = data.terraform_remote_state.do.outputs.server_ids 
}
