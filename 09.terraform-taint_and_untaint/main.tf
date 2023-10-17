#Task32 : understand replace(taint)  and untaint
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2-instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "my-ec2-with-provisioner_local"
  }

  # below are creation time provisioner
  # Use provisioner-file to copy file from machine where Terraform installed to remote machine
  provisioner "local-exec" {
    command = <<-EOT
              "echo ${aws_instance.myec2-instance.public_ip} > hello.txt", 
              "sudo apt update"
              EOT
    

  }
}

/* resource "aws_instance" "myec2-2" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "my-ec2-with-tainted-example"
    Description = "this ec2 creation is to show how to untaint the first ec2 as local-provisioner is failing"
  }
} */

output "public-ip" {
  value = aws_instance.myec2-instance.public_ip
}
