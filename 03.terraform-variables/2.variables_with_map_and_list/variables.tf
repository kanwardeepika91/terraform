# variable for Task10: Declare variable using "map type" for Task10 -- one to one mapping
variable "file_map" {
    type = map
    default = {
    "file_1" = "/tmp/file_1.txt"
    "file_2" = "/tmp/file2.txt"
    }
}

# for Task11: Declare Variable using "list type" for Task11 -- indexing 0,1,2 etc
variable "content_list" {
  type = list
  default = ["this is content3", " this is content4"]
}

# check list (string), list(number)

# for Task12: Understand Data Types : Object -- can be string/number or whatever you define.
variable "aws_ec2_object" {
  type = object({
    name = string
    instances = number
    keys = list(string)
    ami = string
  })
  default = {
    name = "ec2_instance"
    instances = 2
    keys = ["key1.pem", "key2.pem"]
    ami = "ami-ubuntu"
  }
}

# for Task13: Create a variable file : Tfvars.json file to pass it during Terraform execution, you need to declare the variables in this file also that you use in tfvars.json 
variable "_comment" {}
variable "name" {}
variable "city" {}
variable "educationalinfo" {}