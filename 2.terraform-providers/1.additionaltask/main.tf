# Task6a: how to use multiple providers
 # using AWS Provider : create a s3 bucket 
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "mys3bucketmarch009"
    tags = {
        Name = "mys3bucketfirst"
    }
}

# Provider local and random can be downloaded automatically as those dont break code, but providing aws version maybe important, as if you write current code using 2.3.0 version and later sometime, if you update the code, there are chances by that time, a new provider version will be released and can break your code
# if you want you can still mention the provider in provider filecheck
# I'm not providing it, to let you know that its not mandatory but recommended - a tricky question in certification 
 # compare it with task1- there is no provider file/ provider in any file 

resource "local_file" localfile {
    filename = "/tmp/create_file.txt"
    content = "this is my new file using local provider"
}
