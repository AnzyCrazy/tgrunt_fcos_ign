variable "env" {
  type = string
  description = "Environment"
  default = "prod"
}

variable "path" {
  default = "./modules/ec2/config.yaml"
}
