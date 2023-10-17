# Task23: Create instance using depends_on metaargument and you can vice-versa below requirement
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "s3-bucket" {
  bucket     = "s3-bucket-create-before-ec2-creation"
  depends_on = [aws_instance.my-ec2-instance]
}

resource "aws_instance" "my-ec2-instance" {
  count         = 2
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "yesec2-${count.index}"
  }
}

