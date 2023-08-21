resource "null_resource" "null" {
  count = 10
}

resource "null_resource" "fruit" {
  count = length(var.list)
}

variable "fruit" {
  default = ["banana", "apple", "organe"]
}