variable "simple" {
  default = "abcxyz"
}

output "sample1" {
    value = upper(var.simple)
}

variable "simple1" {
  default = ["abc" , "xyz"]
}

variable "simple2" {
  default = {
    xyz = 100
    abc = 200
  }
}

## print first value like var.simple[0] with a function

output "sample1" {
    value = element(var.simple1,0)
}


//using lookup function
// lookup retrieves the value of a single element from a map, given its key. 
// If the given key does not exist, the given default value is returned instead.
// lookup(map, key, default)

optput "sample2" {
    value = lookup(var.sample2, "a1")
}