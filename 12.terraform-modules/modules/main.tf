# Task35: This is the Root module (also called as Calling module)
# 
module "ec2" {
  source        = "../modules/ec2-custom-user-module" 
  region        = var.region
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
}

# Example2: using module from public registry, check the inputs for required variable
module "iam_iam-user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "5.30.0"
  # insert the 1 required variable here
  name  = "iam-user-created-using-public-registry"
}

  
