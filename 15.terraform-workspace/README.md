Terraform workspace:
Workspace is nothing but managing mutliple environments with single configuration file. A seperate state file for each environment like dev, sit, uat or prod will be created
 
When you run the terraform apply for any ".tf" configuration file, a state file is created and it is the "default workspace" (example: a defaultproject folder)- cannot be deleted
when you want to manage your terraform code for multiple environments like dev, sit, uat or prod
each workspace will have its own state file, a directory will be created terraform.d/workspacename/terraform.tfstate
We also have Terraform cloud where we can view workspace visually, wherein working with CLI, you need to use command line commands to switch between workspaces
you can also maintain single configuration file and declare all variables related to all workspace in single file

Commands: these commands are as per the tasks created, you may create your own names
  "terraform workspace list" -- initially this will give you default 
  "terraform workspace new def-workspace" -- create workspace named def-workspace
  "terraform workspace new prod-workspace" -- create workspace named prod-workspace
  "terraform workspace select def-workspace" -- switch to def-workspace

  NOTE: To create a plan for def-workspace, you need to first switch and then run below commands:
  terraform init
  terraform plan
  terraform apply --> now observe that though you configured multiple workspace configurations in terraform files, it just takes the changes related to def-workspace and creates plan accordingly # check task43