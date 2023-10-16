# Task26: Create backend State

provider "aws" {
  region = "us-east-1"
}

# 1. create a iam user
resource "aws_iam_user" "iamuser" {
  name = "deepika"
  tags = {
    Description = "this user is created through terraform"
  }
}



# Task27: Save the plan to a file -practise on terminal
#terraform plan -out=hello.txt
#terraform show -json tfplan
#terraform apply -auto-approve --> This doesnt ask for user confirmation but better not to use, always check the plan and then confirm rather auto-approve 