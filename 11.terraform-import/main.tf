# task34: create resource as terraform import needs the configuration of resource.

# a) task34a: Create ec2 using console, create resource type with no arguments using terraform and execute the terraform import.
resource "aws_instance" "my-ec2-created-using-console" {

#b) task34b: fill in all other details later, once you import the resource
ami = "ami-053b0d53c279acc90"
instance_type = "t2.micro"
key_name = "ec2-console"
tags = {
              "Name": "my-ec2-created-using-console"
}
}

