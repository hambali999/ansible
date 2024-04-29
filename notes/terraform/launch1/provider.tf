terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "ap-southeast-2"
  access_key = "<access_key>"
  secret_key = "<secret_key>"
}