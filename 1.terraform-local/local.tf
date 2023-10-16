#Task1: Creation of Single Resource with Local Provider
resource "local_file" localfile {
    filename = "/tmp/localfile.txt"
    content = "Hello, this file is created using Terraform, adding a new change"
}


#Task2: Single Resource with Local Provider with changes to Task1 - Understand the State more here

resource "local_sensitive_file" "localsensitivefile" {
  filename = "/tmp/localsensitivefile.txt"
  content = "Hello, this is sensitive file to be created using Terraform"
}

#Task3: Creation of Multiple Resources

resource "random_string" "randomstring" {
  length = 7
}

#Task4: Check the Output/Result of resource creation

output "randomstring" {
  value = random_string.randomstring[*].result
}

## check the below why a file requires sensitive = true
output "local_file" {
  value = local_file.localfile
  sensitive = true
}
# Task5: 1) Understand about the tfstate and tfstate.backup with above created tasks. - terraform.tfstate and terraform.tfstate.backup
#        2) Understand about the terraform lock hcl file - .terraform.lock.hcl
#        3) Understand about the Terrafom hidden directory where it downloads the providers - .terraform
  
