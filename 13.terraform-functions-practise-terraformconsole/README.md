Terraform functions

1) check detailed explaination in https://developer.hashicorp.com/terraform/language/functions/abs

#####################
2) Terraform console

 2a) The terraform console command provides an interactive console for evaluating expressions.
 2b)The expressions or the operators that you use, you can test it in terraform console

command:
"terraform console"

#####################
3) Check for images in each folder

Example: a variable region is declared in variables.tf file in 1.functions-list-and-set
variable "region" {
    description = "list of AWS regions"
    type = list
    default = ["us-east-1", "us-east-1", "ca-central-1"]
}

4) commands: "terraform console" and then type "length(var.region)" 

"##### output will be displayed as 3 as list is 3"