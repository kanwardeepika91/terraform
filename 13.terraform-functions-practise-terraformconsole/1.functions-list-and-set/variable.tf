variable "ami" {
  default = "ami-053b0d53c279acc90"
}
variable "instance_type" {
  default = "t2.micro"
}


variable "all_tags" {
  description = "Additional resource tags"
  type        = map(string)
  default = {
    Name        = "my-ec2-instance"
    Description = "created to test the function"
  }
}


#Function more examples
#1. list and set
variable "region" {
    description = "list of AWS regions"
    type = list
    default = ["us-east-1", "us-east-1", "ca-central-1"]
}



