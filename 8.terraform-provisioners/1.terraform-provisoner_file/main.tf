#Task29 : Using file provisioners - executes on remote machine: especially for copying files etc

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2-instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "my-ec2-with-provisioner_file"
  }
  key_name = aws_key_pair.myec2-keypair.id

  # Use provisioner-file to copy file from machine where Terraform installed to remote machine
  provisioner "file" {
    source      = "user_data.sh"
    destination = "/tmp/default/"
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("/Users/sainath/.ssh/id_rsa_ec2_with_terraform")
      host = self.public_ip
    }
  }
}
resource "aws_key_pair" "myec2-keypair" {
  key_name = "myec2-key"
  #public_key = "ssh-rsa xxxj email@example.com"
  public_key = file("/Users/sainath/.ssh/id_rsa_ec2_with_terraform.pub")

}

output "public_ip" {
  value = aws_instance.myec2-instance.public_ip
}