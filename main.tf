terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "zero1"
}

resource "aws_instance" "bia-dev" {
  ami = "ami-01fccab91b456acc2"
  instance_type = "t2.micro"
  tags = {
    Name = "zero1-terraform"
  }
  vpc_security_group_ids = [ "SECURITY_GROUP" ]
  user_data = file("userdata.sh")
  iam_instance_profile = "zero1-ROLE"
}
