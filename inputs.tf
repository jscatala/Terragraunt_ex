variable "do_token" {}

variable "image" {
  default     = "centos-7-x64"
  type        = string
  description = "The id of the machine image to use for the server."
}

variable "server_name" {
  type        = string
  description = "The name of the machine to use for the server."
}

variable "region" {
  default     = "sfo2"
  type        = string
  description = "Region where to place the infra."
}

variable "size" {
  default     = "s-1vcpu-1gb"
  type        = string
  description = "Size for the machine."
}

variable "ssh_fp" {
  type        = list(string)
  description = "The footprint of ssh key."
}

variable "machines" {
  default     = 1
  type        = number
  description = "Numbers of droplets to be created"
}
