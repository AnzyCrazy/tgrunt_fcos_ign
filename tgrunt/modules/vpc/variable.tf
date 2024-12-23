variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  type = string
  description = "VPC name"
  default = "fedora_vpc"
}

variable "dns_support" {
  type = string
  description = "enable_dns_support"
  default = "true"
}

variable "dns_hostnames" {
  type = string
  description = "enable_dns_hostnames"
  default = "true"
}

variable "name_gateway" {
  type = string
  description = "name of gateway"
  default = "main_gateway"
}

variable "name_of_route_table" {
  type = string
  description = "Name of rout table"
  default = "public_subnet_route_table"
}

variable "public_subnet_cidr" {
  type = string
  description = "Public Subnet CIDR"
  default = "10.0.1.0/24"
}

variable "public_subnet_name" {
  type        = string
  description = "Public subnet name"
  default     = "public_fedora_subnet"
}

variable "av_zone" {
  type        = string
  description = "avalability zone"
  default     = "us-east-1a"
}

variable "map_ip" {
  type        = bool
  description = "map_public_ip"
  default     = "true"
}

variable "env" {
  type        = string
  description = "Envitonment"
  default     = "dev"
}
