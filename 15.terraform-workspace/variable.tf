variable "region" {
    default = "us-east-1"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "ami" {
    type = map
    default = {
        "def-workspace" = "ami-053b0d53c279acc90",
        "prod-workspace" = "ami-041feb57c611358bd"
    }

}


