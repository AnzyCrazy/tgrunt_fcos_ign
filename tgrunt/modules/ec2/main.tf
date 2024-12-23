terraform {
  required_providers {
    ignition   = {
      source   = "e-breuninger/ignition"
      version  = "1.0.5"
      //source = "deeliciouscode/ignition"
      //version = "2.1.8-pre"
    }
  }
}

data "ignition_config" "config" {
  content      = file("${var.path}")
  strict       = true
  pretty_print = false

}

resource "aws_instance" "ec2" {
  ami = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.ssh_key
  availability_zone = var.av_zone
  user_data = data.ignition_config.config.rendered
  security_groups = [ var.public_sg_id ]
  subnet_id       = var.public_subnet_id

  tags = {
    Name = "${var.env}-${var.ec2_name}"
  }
}

resource "aws_ebs_volume" "volume" {
  availability_zone = var.av_zone
  size              = var.ebs_size
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = var.ebs_name
  volume_id   = aws_ebs_volume.volume.id
  instance_id = aws_instance.ec2.id
}
