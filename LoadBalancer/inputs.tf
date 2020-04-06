variable "do_token" {}

variable "name" {
  type        = string
  description = "The name for the loadbalancer to use for the server."
}

variable "region" {
  default     = "sfo2"
  type        = string
  description = "Region where to place the infra."
}
