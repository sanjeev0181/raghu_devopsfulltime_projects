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

## values from list
# second value in list

output "sample_list01" {
  value = var.sample_list[1]
}

# Print number1 is sample_dict

output "sample_dict_num1" {
  value = var.sample_dict["number"]
}

output "sample_dict_bool" {
  value = var.sample_dict["boolean"]
}

output "env" {
    value = var.env
}