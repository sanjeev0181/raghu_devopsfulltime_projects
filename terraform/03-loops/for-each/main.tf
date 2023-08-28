resource "null_resource" "fruits" {
  for_each = var.fruits

  provisioner "local-exec" {
    //command = "echo Fruit Name - ${var.fruits[each.value["name"]]}"
    command = "echo Fruit Name - ${each.key}-${each.value}"
  }
}

resource "null_resource" "fruits1" {
  for_each = var.fruits1

  provisioner "local-exec" {
    //command = "echo Fruit Name - ${var.fruits[each.value["name"]]}"
    command = "echo Fruit Name - ${each.key}-${each.value["count"]}"
  }
}

variable "fruits1" {
  default = {
    apple = {
        name = "apple"
        count = 10
    }
    banana = {
        name = "banana" 
        count = 200
    }

    organe = {
        name = "organe"
        count = 100
    }
  }
}

variable "fruits" {
  default = {
    apple = 10
    banana = 200
    organe = 20
  }
}