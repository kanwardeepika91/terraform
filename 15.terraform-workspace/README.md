## Terraform workspace

`1) Workspace is nothing but managing mutliple environments with single configuration file. A seperate state file for each environment like dev, sit, uat or prod will be created
2) When you run the terraform apply for any ".tf" configuration file, a state file is created and it is the "default workspace" (example: a defaultproject folder)- cannot be deleted
3) when you want to manage your terraform code for multiple environments like dev, sit, uat or prod
4) each workspace will have its own state file, a directory will be created terraform.d/workspacename/terraform.tfstate
5) We also have Terraform cloud where we can view workspace visually, wherein working with CLI, you need to use command line commands to switch between workspaces
you can also maintain single configuration file and declare all variables related to all workspace in single file
6) Commands: these commands are as per the tasks created, you may create your own names
  6a) "`terraform workspace list`" -- initially this will give you default 
  6b) "`terraform workspace new def-workspace`" -- create workspace named def-workspace
  6c) "`terraform workspace new prod-workspace`" -- create workspace named prod-workspace
  6d) "`terraform workspace select def-workspace`" -- switch to def-workspace

7) NOTE: To create a plan for def-workspace, you need to first switch and then run below commands:
  7a) terraform init
  7b) terraform plan
  7c) terraform apply --> now observe that though you configured multiple workspace configurations in terraform files, it just takes the changes related to def-workspace and creates plan accordingly # check task43`