Execute all the expressions using "terraform console", check each image

1) Numeric operators
You can do all below operations using Terraform console : +, - , *, /
Open terraform console and try it out
examples
> 1+2
3
> 1-2
-1
> 3*4
12
> 4/3
1.33333333
> 

2) Equality operators -- comparision of numbers/values -- results in true/false
== -> this check the exact match, if **matches results true**, else false
!= -> this check the condition, if **doesn't matches results true**, else false


3) Comparision Operators --results in true/false

>  --------- greater than
>= --------- greater than or equalto
<  --------- less than
<= --------- less than or equalto

4) Logical operators

&& -- returns boolean only if both conditions met
|| -- returns boolean true or false if either of coniditions are met
check examples using variables mentioned in variable.tf
examples- a) var.special - check result, 
          b) ! var.special - check result,
          c) var.num1 > var_num2