Execute all the expressions using "terraform console", check each image

1) Numeric operators
 1a) You can do all below operations using Terraform console : +, - , *, /
 1b) Open terraform console and try it out
examples
  > 1+2
    3
  > 1-2
    -1
  > 3*4
    12
  > 4/3
    1.33333333


2) Equality operators -- comparision of numbers/values -- results in true/false
  2a) == -> this check the exact match, if **matches results true**, else false
  2b) != -> this check the condition, if **doesn't matches results true**, else false


3) Comparision Operators --results in true/false

  3a) >  greater than
  3b) >=  greater than or equalto
  3c) <   less than
  3d) <=  less than or equalto

4) Logical operators

 4a) && -- returns boolean only if both conditions met
 4b) || -- returns boolean true or false if either of coniditions are met
 4c) check examples using variables mentioned in variable.tf
 4d) examples- 
   a) var.special - check result, 
   b) ! var.special - check result,
   c) var.num1 > var_num2
