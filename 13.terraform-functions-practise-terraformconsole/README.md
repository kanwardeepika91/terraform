Terraform functions

check detailed explaination in https://developer.hashicorp.com/terraform/language/functions/abs

#####################
Terraform console

The terraform console command provides an interactive console for evaluating expressions.
The expressions or the operators that you use, you can test it in terraform console

command:
terraform console

Example: a variable region is declared in variables.tf file in 1.functions-list-and-set
variable "region" {
    description = "list of AWS regions"
    type = list
    default = ["us-east-1", "us-east-1", "ca-central-1"]
}

type commands: "terraform console" and then type "length(var.region)" 

"##### output will be displayed as 3 as list is 3"