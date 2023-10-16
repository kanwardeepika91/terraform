# Task20: Create 3 instances using Count metaargument
#for this you just have to add count and also output value indexing should be * or [0] or [1] etc 
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

resource "aws_instance" "my-ec2-instance" {
  count = 3    
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "myinstance-${count.index}"
  }
}

 #  View the instance id of new instance and its public ip
output "instance_id" {
     value = aws_instance.my-ec2-instance[0].id  # to get only the first instance id, use * to get all instances id
 } 

output "instance_public_ip" {
    # value = aws_instance.my_ec2_instance.public_ip  # for one instance
    value = aws_instance.my-ec2-instance[*].public_ip  # to get all instances public ip
} 