output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "av_zone" {
  value = var.av_zone
}

output "env" {
  value = var.env
}
