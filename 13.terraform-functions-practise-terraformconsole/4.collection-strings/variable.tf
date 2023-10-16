#Task39: collecion of strings
variable "ami-collection-function" {
    type = list
    default = ["ami-abc","AMI-DEF","ami-efg","ami-abc"]
    description = "A string containing ami ids"
}