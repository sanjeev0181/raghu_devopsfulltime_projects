resource "null_resource" "null" {
  count = 10
}

resource "null_resource" "null1" {
  count = length(var.list)
}

variable "list" {
  default = ["banana", "apple", "organe"]
}