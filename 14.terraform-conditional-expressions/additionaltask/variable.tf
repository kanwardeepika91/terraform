variable "region" {
    default = "us-east-1"
}
variable  "name" {
    type = string
}
variable "ami" {
    type = string
    default = "ami-053b0d53c279acc90"
}
variable "small" {
    type = string
    default = "t2.nano"
}
variable "large" {
    type = string
    default = "t2.2xlarge"
}