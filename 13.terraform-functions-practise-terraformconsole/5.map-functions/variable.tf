#Task40: how mapping works
# Mapping function is used to map the key value pair
#mapping can be converted into list using keys and values function.
# you can lookup for the value if key is supplied
# if the key provided by map is nto available in default list, even then you can provide it adding key with value when trying function.

variable "ami-map-function" {
    description = "a map of ami ids with regions"
    type = map
    default = {
        "us-east-1" = "ami-xyz",
        "ca-central-1" = "ami-abc",
        "ap-south-1" = "ami-hello"

    }
}