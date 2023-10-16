#Task38:
#3.String Functions
#a.Split function -> splits the string into a list
#b.substr function --> cuts the string and results as requested
#c.join function --> does opposite to substr function, it will combine the list of values to single string
variable "ami-split" {
    type = string
    default = "ami-abc,AMI-DEF,ami-efg,ami-abc"
    description = "A string containing ami ids"
}

variable "ami-join" {
    type = list
    default = ["ami-abc","AMI-DEF","ami-efg","ami-abc"]
    description = "A string containing ami ids"
}