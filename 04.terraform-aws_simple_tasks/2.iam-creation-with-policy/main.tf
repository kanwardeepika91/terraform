# Task19: If you provide the region as export varilable or environment variable like % export AWS_REGION="us-west-2", then you dont need the below provider to be mentioned.
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

#2. Create a iam policy , you can either pass the policy code like this or can create a json file and call the file here.

/* resource "aws_iam_policy" "iampolicy" {
  name = "user-policy"
  description = "user iam policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "*"
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
} */

#2. Create a iam policy 
resource "aws_iam_policy" "iampolicy" {
  name = "user-policy"
  description = "user iam policy"
  policy = file("iam_user_policy_attach.json")
}

#3. Attach this user policy to user

resource "aws_iam_user_policy_attachment" "userpolicyattach" {
    user = aws_iam_user.iamuser.name
    policy_arn = aws_iam_policy.iampolicy.arn
}

# destroy everything : terraform destroy"