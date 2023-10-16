# Task21: Create 3 instances using for_each metaargument with locals
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
    instances = toset(["first-ec2", "sec-ec2", "third-ec2"])  # If you use duplicate in the list, then it won't create a new instance. so use unique name only. 
    #instances = toset(["first-ec2", "sec-ec2", "sec-ec2"])   # If used duplicate, it will create only first-ec2 and sec-ec2 - just two instances only.                                                                   
}   

resource "aws_instance" "my-ec2-instances" {
    for_each = local.instances
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    tags = {
        Name = each.key
    }
}


# destroy everything : terraform destroy"
