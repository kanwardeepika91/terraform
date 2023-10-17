1) You can use any name to your terraform configuration file, extension should be .tf -- Dont worry, if you dont understand this now - you will see those when you start doing the further tasks.

2) Commonly used commands are and are used for every plan that you create or apply or destroy 

2a) "terraform init" - to initialize or download the plugins(providers)
2b) "terraform plan" - to view the blueprint or plan configured by terraform
2c) "terraform apply" - will create the infrastructure as per plan
2d) "terraform destroy or terraform apply -destroy" - will destroy the infrastructure you created - (important question for cert)


3) Important Files to know: 
3a) "terraform.tfstate" - is created when you use "terraform plan" and it will have all the infrastructure when you use "terraform apply" 
3b) "terraform.tfstate.backup" - is a backup copy of the state when you destroy 
3c) ".terraform.lock.hcl" - Understand about the terraform lock hcl file - it locks the provider versions that are downloaded when you initialize using "terraform init"
3d) ".terraform" Understand about the Terrafom hidden directory where it downloads the providers in this directory
  
