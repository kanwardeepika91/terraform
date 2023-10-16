Steps:
Example1: Create a root module and child modules
a) Create ec2-Module using user's local/custom module: create resource ec2 and associate variables , outputs etc in single file and then seperate them
b) call this module from Root module's main.tf

Example2:
Create IAM-Module using Terraform public Registry: Create create resource iam-user , other details etc
b) call this module from Root module's main.tf


Commands are same as commonly used commands as 1.terraform-local
Addtional commands if you want to download the modules then you can either use "terraform init" or "terraform get" 