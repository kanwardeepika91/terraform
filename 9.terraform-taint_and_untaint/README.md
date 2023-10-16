Terraform replace(taint) and untaint

terraform replace (taint is the old used command)
Just observe the some tasks created during provisioners, if something fails to create succesfully then a resource is maked tainted (meaning it will be replaced in next apply, as that wasn't created succesfully)
you can use the replace(taint) command to replace a specific resource rather running terraform apply again
you can use the untaint command if you think that resource was succesful and it is okay if provisioner is failing and you can fix those errors manually after logging to resources

Commands:
replace/taint: "terraform replace aws_instance.myec2-instance" (or)"terraform taint aws_instance.myec2-instance"
untaint: "terraform untaint aws_instance.myec2-instance"