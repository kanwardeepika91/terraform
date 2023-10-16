#Task36: look for images that i attached to check how it works: Additional functions -list,map 
resource "aws_instance" "my-ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = var.all_tags
}