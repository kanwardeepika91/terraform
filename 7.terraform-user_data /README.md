Terraform user_data

If you want to install any softwares etc after resources are provisioned, then you can use this user_data, you can either pass commands in a format or as a file too.
Recommended is : pass data via a file like user_data.sh , easy to read/understand.
user_data, sometimes doesn't work as expected. Hence, resources maybe provisioned without installing the data, in that cases you need to login to server and check if that is installed or not. 
Additonal Info : When a user data script is processed, it is copied to and run from /var/lib/cloud/instances/ instance-id / . The script is not deleted after it is run and can be found in this directory with the name user-data.
you can use this command to check what all has installed usig user_data, for this you need to ssh to machine : curl http://169.254.169.254/latest/user-data
