# Task28: using user_data - sometimes user_data : this may or maynot work sometimes but provisioning will be succesful, it doesnt give any error.
#Steps:
#Additonal Info : When a user data script is processed, it is copied to and run from /var/lib/cloud/instances/ instance-id / . The script is not deleted after it is run and can be found in this directory with the name user-data.
# you can use this command to check what all has installed usig user_data, for this you need to ssh to machine : curl http://169.254.169.254/latest/user-data
#1. create an ec2 instance
#2. user userdata to install nginx
#3. create keypair
#4. link this keypair to ec2 instance, so you have to go back to block1
#5. create security group with ssh access
#6. add securitygroup ids to ec2 instance
#7.add output variable to get public ip, you can do so in same file else in seperate file also
#******************************************************#

#start writing the script from here 

provider "aws" {
  region = var.region
}
#1. create a ec2 instance
resource "aws_instance" "myec2-instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "my-ec2-with-terraform"
  }
  #4. link this keypair to ec2 instance, so you have to go back to block1 
  key_name = aws_key_pair.myec2-keypair.id

  #6. add securitygroup ids to ec2 instance
  vpc_security_group_ids = [aws_security_group.ssh-acccess.id]

  #2. user userdata to install nginx
  user_data = file("user_data.sh")
}
#3. create keypair
#on your mac system -- type command ssh-keygen -b 4096 -t rsa
# give any location to save the file -->/Users/sainath/.ssh/id_rsa_ec2_with_terraform.pub and private is id_rsa_ec2_with_terraform
resource "aws_key_pair" "myec2-keypair" {
  key_name = "myec2-key"
  #public_key = "ssh-rsa AAAABGhtxPfadfasdfadsfgalajdlfaoeiavnajsoahreasndb5o41 email@example.com"
  public_key = file("/Users/sainath/.ssh/id_rsa_ec2_with_terraform.pub")
}

#5. create security group with ssh access
resource "aws_security_group" "ssh-acccess" {
  name        = "allow_ssh inbound"
  description = "Allow ssh inbound traffic"

  ingress {
    description = "allow inbound ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

      ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]

}
}

#7.add output variable to get public ip, you can do so in same file else in seperate file also
output "ec2-public-ip" {
  value = aws_instance.myec2-instance.public_ip
}