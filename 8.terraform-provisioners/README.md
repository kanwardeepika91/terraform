Terraform Provisioners

Provisioners: local-exec, file provisioner, remote-exec
1) local-exec: invokes on machine where terraform is running(lets say local machine), example -> get the output from the infrastructure created and save it on local machine
2) file provisioner:  executes on remote machines , example copying files from terraform running machine to remote machines
3) remote-exec: executes on remote machines, example installing softwares etc, like user-data but with error handling
4) If any of the script fails for any reason, the provisioning of resource may also not be succesful and a error will be displayed.
5) you can debug the errors which is explained in 10.terraform debugging