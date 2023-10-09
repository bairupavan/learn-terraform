resource "null_resource" "fruits" {

  for_each = var.fruits

  provisioner "local-exec" {

    command = "echo fruit name - ${each.key} - ${each.value}"
  }
}

variable "fruits" {
  default = {
    apple = 10
    oranges = 20
    grapes = 100
  }
}

resource "null_resource" "mobiles" {
  for_each = var.mobiles

  provisioner "local-exec" {
    command = "echo - ${each.value["name"]} - ${each.value["price"]}"
  }
}

variable "mobiles" {
  default = {
    samsung = {
      name = "samsung"
      price = 20000
    }
    realme = {
      name = "realme"
      price = 15000
    }
    iqzoo = {
      name = "iqzoo"
      price = 25000
    }
  }
}