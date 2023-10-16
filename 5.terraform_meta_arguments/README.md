Terraform meta_arguments

Each meta argument had detailed information in each tasks
Dependencies : Implicit and Explicit dependency
Implicit Dependency : This means that you dont specifically mention this dependency, but terraform understands it automatically based on resources created. example : check task20  - the output section, it gets the value only after ec2 is created, meaning output is dependent on ec2 creation.
Explicit Dependency "depends_on": You explicitly define this dependency in configuration # check task23s