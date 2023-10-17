#Task10 : Understand Data Types : Mapping
resource "local_file" "file_1" {
  filename = var.file_map.file_1
  # or filename = var.file_map["file_1"] 
  content = "this is file mapping for file1"
}

resource "local_file" "file_2" {
    filename = var.file_map.file_2
    content = "this is file mapping for file2"
  
}

# Task11: Understand Data Types : List-- indexing 0,1,2 

resource "local_file" "file_3" {
  filename = var.file_map.file_1
  content = var.content_list[0]
}

resource "local_file" "file_4" {
  filename = var.file_map.file_2
  content = var.content_list[1]
}

# Task12 : Understand Data Types : Object -- can be string/number or whatever you define.
# just check if the output value we define in variables.tf is considering the right output or not

output "aws_ec2_object_key1" {
  value = var.aws_ec2_object.keys[0]
}

output "aws_ec2_object_key2" {
  value = var.aws_ec2_object.keys[1]
  
}

output "aws_ec2_object_instances" {
  value = var.aws_ec2_object.instances
} 

output "aws_ec2_object_ami" {
  value = var.aws_ec2_object.ami
}

#If you want all these variables to result as output, then use the below
output "aws_ec2_object_all_variables" {
  value = var.aws_ec2_object
}

# #Task13 - Create a variable file : Tfvars.json file to pass it during Terraform execution",
  #  "name" : "Deepika_Kanwar",
  output "json_var_name" {
    value = var.name
  }

# To output whole educationalinfo
  output "json_var_educationalinfo" {
    value = var.educationalinfo
  }
  # to output only the Studies from Educationalinfo block
output "json_var_educationalinfo_Studies" {
  value = var.educationalinfo.Studies
}