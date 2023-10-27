## Terraform replace(taint) and untaint

`1) `terraform replace` (taint is the old used command)
 1a)Just observe the some tasks created during provisioners, if something fails to create succesfully then a resource is maked tainted (meaning it will be replaced in next apply, as that wasn't created succesfully)
 1b)you can use the replace(taint) command to replace a specific resource rather running terraform apply again


2) `terraform untaint` -> If you don't want to replace the resources to be created again then you can untaint 
  2a) you can use the untaint command if you think that resource was succesful and it is okay if provisioner is failing and you can fix those errors manually after logging to resources`

# Commands:
1) replace/taint: "`terraform replace aws_instance.myec2-instance`" (or)"terraform taint aws_instance.myec2-instance"
2) untaint: "`terraform untaint aws_instance.myec2-instance`"