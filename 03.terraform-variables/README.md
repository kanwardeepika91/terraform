Terraform Variables

1) Input variables --> You must have to declare variable name - check variables.tf
2) output variables

Input variables:
1a)Command-line flags: terraform apply -var="name=city"    #check task 13
1b)Variable Definition (.tfvars) Files :terraform apply -var-file="testing.tfvars"  #you can also create a file and pass file 
1c)Terraform Environment Variables : export TF_VAR_terra_variable="deepika_kanwar"  #check task9
and exporting provider variables : export AWS_ACCESS_KEY_ID="anaccesskey"  #check task14

output variables:
2a)  this output variable fetches the data from the infrastructure created and displays to visible output to us  # check task12
