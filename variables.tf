variable "project_name" {
  default = "multi-env-infra"
}

variable "vpc_cidr" {}
variable "subnet_cidr" {}
variable "instance_type" {}

variable "ingress_ports" {
  type = list(number)
}
