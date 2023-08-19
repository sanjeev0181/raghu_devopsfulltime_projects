variable "simple_string" {
    default = "Hello world"
}

## Shell scripting equivalent sample_string="Hello World"

#To print in shell script we can echo , following is the syntax in shell

#echo $simple_string

output "sample_string" {
  value = var.simple_string
}

## In above case we are printing just variable, If variable is a combination of some string ten following is the syntax.
## ${} is mandatory if we include the variable inside a string
output "sample_string01" {
  value =  "Value of sample_string01 = ${var.simple_string}"
}