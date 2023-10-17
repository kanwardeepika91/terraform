
# create a variable1 for  "filename" from Task1(similar) and give default value.
variable "filename" {
  default = "/tmp/file1.txt"
  type = string     # this is optional but when used it enforces the type of variable being used.
  description = "this is the filename"
}

# create a variable2 for "content" also
variable "content" {
    default = "Hello, this file is created using Terraform with by defining variable"
}

# for Task9 : Declare Variables without any value in the file, but to be exported from Terminal.
# # for example1 and 2: type this command in terminal : export TF_VAR_terra_variable="deepika_kanwar"
variable "terra_variable" {}

#for example 3 : declare variable -  type this command in terminal: export TF_VAR_justfilename_variable=/tmp/hellofile.txt
variable "justfilename_variable" {
  
}