terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  # See /code/03-basics/aws-backend
  # backend "s3" {
  #   bucket         = "devops-directive-tf-state"
  #   key            = "08-testing/examples/hello-world/terraform.tfstate"
  #   region         = "ap-southeast-2"
  #   dynamodb_table = "terraform-state-locking"
  #   encrypt        = true
  # }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "ap-southeast-2"
  access_key = "<>"
  secret_key = "<>"
}
