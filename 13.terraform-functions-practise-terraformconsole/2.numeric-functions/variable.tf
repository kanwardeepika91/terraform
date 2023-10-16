#Task37:
#2. Numeric functions
#max, min, ceil- used for floating numbers but returns the next digit , floor - floating numbers but returns the value lesser or equal to the digit

variable "num" {
    type = set(number)
    default = [24, 50, 100, 140, -20]
    description = "set of numbers"
  
}