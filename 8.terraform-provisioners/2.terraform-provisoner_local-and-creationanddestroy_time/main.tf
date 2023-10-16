#Task30 : Using local-exec provisioners - executes/invokes on local machine
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
    command    = "echo ${self.public_ip} > hello.txt"

  }

# failure behaviour - bydefault, if provisioner fails then terraform execution fails, otherwise you can mention the on_failure = fail
# failure results in resources tainted
/*     provisioner "local-exec" {
    on_failure = fail
    command    = "echo ${self.public_ip} > hello.txt"

  } */
# if you want resources to be created irrespective of errors, then use below on_failure = continue 
# Use provisioner-file to copy file from machine where Terraform installed to remote machine
  /* provisioner "local-exec" {
    on_failure = continue
    command    = "echo ${self.public_ip} > hello.txt"

  } */


#below are destory time provisioner
  # add one more provisioner with destroy condition
  provisioner "local-exec" {
    when    = destroy
    command = "echo ${self.public_ip} destroyed > hello_destroy.txt"
  }

}

output "public-ip" {
  value = aws_instance.myec2-instance.public_ip
}
