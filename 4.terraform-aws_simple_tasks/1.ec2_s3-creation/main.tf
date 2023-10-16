# you need to have AWS console access, create one if you dont have.
# Task14: Configure AWS credentials for Terraform. After Installing AWS CLI, create a IAM user having FullAdminAccess with programatic access
# save those credentials and pass them as variables before running terraform init.
# export AWS_ACCESS_KEY_ID="anaccesskey"
# export AWS_SECRET_ACCESS_KEY="asecretkey"


# Task15: Create AWS Ec2 instance using Terraform 
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.17.0"     # this is aws provider version
    }
  }
required_version = ">=0.13 "   # this is terraform version
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2_instance" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    tags = {
      Name = "first-ec2-instance"
    }
}

# Task16: View the instance id of new instance and its public ip
output "instance_id" {
    value = aws_instance.my_ec2_instance.id  # to get the instance id
}

output "instance_public_ip" {
    value = aws_instance.my_ec2_instance.public_ip  # for one instance
}


# Task17: Create s3 bucket

resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "mys3bucketmarch009"
    tags = {
        Name = "mys3bucketfirst"
    }
}

# Task18: Terraform Destroy : 51 line is important
# use terraform destroy or terraform apply destroy
# command: "terraform destroy or "terraform apply -destroy": -> deletes all infrastructure after your confirmation
# command: "terraform destroy --target aws_s3_bucket.my_s3_bucket"  ->  deletes only specific resource
# you can also use "terraform state rm aws_s3_bucket.my_s3_bucket" -> this delete this resource from state file which is not recommended but practise it to understand the concept and then you need to remove from configuration/main.tf file and run terraform plan