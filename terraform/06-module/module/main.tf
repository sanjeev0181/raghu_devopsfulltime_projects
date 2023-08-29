resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo Hello from module - Input - ${var.input}"
  }
}

variable "input" {}