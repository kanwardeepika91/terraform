# Task22: Create 3 instances with different ami's using for_each metaargument
terraform {
  required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "5.17.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
  
locals {
    instances = {"deepika-ec2":"ami-03a6eaae9938c858c", "sai-ec2":"ami-053b0d53c279acc90", "ganesh-ec2":"ami-0be0e902919675894"}
  }
resource "aws_instance" "my-ec2-instance" {
  # (amazon-linux AMI -> ami-03a6eaae9938c858c, ubuntu AMI -> ami-053b0d53c279acc90, MS-Windows AMI -> ami-0be0e902919675894)
  for_each = local.instances
  ami = each.value
  instance_type = "t2.micro"
  tags = {
    Name = each.key
  }
}

# destroy everything : terraform destroy"