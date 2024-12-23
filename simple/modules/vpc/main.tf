resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_support   = var.dns_support
  enable_dns_hostnames = var.dns_hostnames 
  
    
  
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.vpc.id
  
  tags = {
    Name = var.name_gateway
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = var.map_ip
  availability_zone       = var.av_zone

  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_route_table" "pub_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }

  tags = {
    Name = var.name_of_route_table
  }

}

resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.pub_route_table.id
}
