resource "null_resource" "pavan1" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo fruit name - ${var.fruits[count.index]}"
  }
}

variable "fruits" {
  default = ["apple", "citrus", "mango"]
}