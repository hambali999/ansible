variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.123.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "dev"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "10.123.1.0/24"
}

variable "subnet_name" {
  description = "Name of the subnet"
  default     = "dev-public"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  default     = "ap-southeast-2"

}

variable "internet_gateway_name" {
  description = "Name of the internet gateway"
  default     = "dev-igw"
}

variable "route_table_name" {
  description = "Name of the route table"
  default     = "dev_public_rt"
}

variable "default_route_destination_cidr_block" {
  description = "CIDR block for the default route"
  default     = "0.0.0.0/0"
}
