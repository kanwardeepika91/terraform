terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }
  }
  backend "s3" {
    bucket = "mybucket"
    key    = "/terraform-iam/"
    region = "us-east-1"
  }

}