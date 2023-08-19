variable "simple_string" {
    default = "Hello world"
}

## Shell scripting equivalent sample_string="Hello World"

variable "sample_number" {
  default = 100
}

# 10, 6 is also a number in terraform

variable "sample_boolean" {
  default = true
}

## Boolean are true or false

# Boolean and number does not need to be quoted, only strings need to be quoted that to be with double quotes.
# terraform does support for single quotes.

### variable types

# So far we have seen is defaut variable type

# we have list variable type, Meaning single variable can hold multiple values

variable "sample_list" {
  default = [100,
             true,
            "hello",
            123
        ]
}

## Data type inside the list does not matter in terraform.

# We have a dictionary (or map ), meaning single variable will have multiple values, & each value is going to have a separate name.

variable "sample_dict" {
  default =  {
    number = 100
    string1 = "hello"
    boolean = true
    number01 = 123
  }
}
  
## This is the most preferred variable over the list when we declare the data.

variable "env" {}

variable "prod" {}