resource "aws_vpc" "main_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "main_public_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = var.subnet_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone

  tags = {
    Name = var.subnet_name
  }
}

resource "aws_internet_gateway" "main_internet_gateway" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = var.internet_gateway_name
  }
}

resource "aws_route_table" "main_rt" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.main_rt.id
  destination_cidr_block = var.default_route_destination_cidr_block
  gateway_id             = aws_internet_gateway.main_internet_gateway.id
}

resource "aws_route_table_association" "main_public_assoc" {
  subnet_id      = aws_subnet.main_public_subnet.id
  route_table_id = aws_route_table.main_rt.id
}

