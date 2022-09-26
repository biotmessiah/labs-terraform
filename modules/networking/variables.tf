variable "environment" {
  type=string
  default = "homol"
  description = "Ambiente"
}

variable "vpc_cidr" {
  type=string
  default = "10.40.0.0/16"
}
