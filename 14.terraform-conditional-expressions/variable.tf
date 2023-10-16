variable "special" {
type = bool
default = true
description = "hello"

}

# in terraform console, check var.num_1 > var.num_2 ,var.num_1 + var.num_2 etc
variable "num_1" {
type = number
default = 20
description = "this is num_1"
}

variable "num_2" {
    type = number
    default = 10
    description = "this is num_2"
}

variable "ami" {
    default = "ami-053b0d53c279acc90"
}
variable "instance_type" {
    default = "t2.micro"
}

variable "create_instance" {
    type = bool
    default = false
}

variable "length" {
  default  = 4
  type = number
}


