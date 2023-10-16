# task35 Child module: create ec2 module
resource "aws_instance" "myec2_machine1" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
      Name = "my-ec2-module"
    }
}

output "myec2_machine1_publicip" {
  value = aws_instance.myec2_machine1.public_ip
}