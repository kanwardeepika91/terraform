terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.17.0"     # this is aws provider version
    }
  }
}
provider "aws" {
  region = "us-east-1"                 # this is where you can configure some default configurations like region
}


