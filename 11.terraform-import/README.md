## Terraform import

`1) You can import the infrastructure that is not controlled or managed by Terraform meaning the infrastructure which was not created using Terraform, it could be manual console creation or using some other scripts
2) To import any resource for example an ec2 instance, you need to first create a resource block with resource name and then you can import that instance
You will learn about it in task34

Commands:
do task34a and execute below command:
1) "`terraform import aws_instance.my-ec2-created-using-console i-0ff3263cf4d4ac2e0`"`
