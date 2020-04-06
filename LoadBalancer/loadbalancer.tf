data "terraform_remote_state" "do" {
  backend = "s3"

  config = {
    bucket     = "tfstates"
    key        = "terragrunt/module/droplets.tfstate"
    access_key = "SE2ZBMAMHBA5BSEIE5DS"
    secret_key = "MHbS5tbxHh/ifdE3/4flRshDpW8aCxmqnixafgtFOQI"
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
