
# Task25: Create AWS Ec2 instance using Terraform
# example2: 
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.17.0"
    }
  }
required_version = ">=0.13 "  
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2_instance" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    tags = {
      Name = "second-ec2-instance"
    }
    lifecycle {                     # if tags needed to ignore, you can use this, just change the tag value manually in AWS console and then check here
      ignore_changes = [ tags ]
    }
}
