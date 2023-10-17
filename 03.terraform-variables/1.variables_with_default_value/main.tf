#Task8: Declare Variables with default value
resource "local_file" localfile {
    filename = var.filename
    content = var.content
}

# Task9 : Export variables : Declare Variables without any value in the file, but to be exported from Terminal : These we do normally for AWS Access, we will understand more when we work on AWS.
# you can check the output value if needed
   # example1:
output "export_variable_from_terminal" {
    value = var.terra_variable
}
   # example2:
resource "local_file" justcontent {
    filename = "/tmp/justcontent.txt"
    content = var.terra_variable
}

# example3: 

resource "local_file" justfilename {
    filename = var.justfilename_variable
    content = "hello, the content is written to a filename thats created by external variable"
}
