# Task43 : creating workspaces

#Steps for task43:
# a) create main.tf with sample code
#b)# create a workspace with name "def-workspace" and "prod-workspace"
# c) check variable how its mapping the values for ami


resource "aws_instance" "def-workspace" {
    ami = lookup(var.ami, terraform.workspace)
    instance_type = var.instance_type
    tags = {
      Name = "ec2-${terraform.workspace}"
      Description = "this is created in ${terraform.workspace} region"
    }
}

resource "aws_instance" "prod-workspace" {
    ami = lookup(var.ami, terraform.workspace)
    instance_type = "t2.micro"
    tags = {
      Name = "ec2-${terraform.workspace}"
      Description = "this is created in ${terraform.workspace} region"
    }
}

