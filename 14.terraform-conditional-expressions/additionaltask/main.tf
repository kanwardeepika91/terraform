#Task42: understand how conditional expressions work
# execute the task as terraform plan -var=name=tiny
#terraform apply -var=name=tiny
# if condition meets ? then true : else false
resource "aws_instance" "ec2-tagged" {
  ami = var.ami
  instance_type = var.name == "tiny" ? var.small : var.large
  tags = {
    Name = var.name
  }
}