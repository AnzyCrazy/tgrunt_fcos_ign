variable "ami_id" {
  type        = string
  description = "AMI id"
  default     =  "ami-0f1955c35d05f87b2"
  // default     = "ami-0e2c8caa4b6378d8c"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}

variable "ec2_name" {
  type        = string
  description = "Name of the first ec2 instance"
  default     = "frodo"
}

variable "ssh_key" {
  type        = string
  description = "Name of ssh-key"
  default     = "name_of_your_ssh_key"
}

variable "public_sg_id" {
  type        = string
  description = "Takes from vpc module"
}

variable "public_subnet_id" {
  type        = string
  description = "Takes from vpc module"
}

variable "av_zone" {
  type        = string
  description = "avalabity zone"
}

variable "ebs_size" {
  type        = string
  description = "Size of addition EBS"
  default     = "10"
}

variable "ebs_name" {
  type        = string
  description = "Name of attached EBS /dev/xvdb" 
  default     = "/dev/sdh"
}

variable "path" {
  type        = string
  description = "Path to config.yaml file"
  default     = "./modules/ec2/config.yaml"
}
