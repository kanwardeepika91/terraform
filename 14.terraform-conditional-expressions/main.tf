# Task41 : After understanding the operators, then do this task
# check how if else conditions works in terraform 
#Terraform condition syntax:  <CONDITION> ? <TRUE_VAL> <FALSE_VAL>
/* Terraform doesn’t support if statements. Luckily we can achieve the same result by using a specific parameter called count.
You can think about it this way: you can set count to 1 on a specific resource and get one copy of that resource.
However, setting the same count parameter to 0 you won’t get any resource created. or use depends_on

If condition is true then the result is true_value. If condition is false then the result is false_val.
 */

 
#Task1:if you give create_instance = true --> it will create one instance else it won't create 
resource "aws_instance" "my-ec2" {
  ami = var.ami
  instance_type = var.instance_type
  count = var.create_instance ? 1 : 3
}

#Task2: random password length

resource "random_password" "password-generator" {
    length = var.length < 8 ? 5 : 9
    
}

output "random_pass" {
  value = random_password.password-generator.result
  sensitive = true
}


#task3: create instance based on tag values
resource "aws_instance" "tagged-ec2" {
  
}