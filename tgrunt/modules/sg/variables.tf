variable "sg_name" {
  type = string
  description = "Name of security group"
  default = "public_fedora_sg"
}

variable "vpc_id" {
  type        = string
  description = "Takes from vpc module"
}

variable "public_sg_name" {
  type = string
  description = "Name of public security group"
  default = "public_fedora_sg"
}

variable "env" {
  type = string
  description = "Environment"
  default = "dev"
}
