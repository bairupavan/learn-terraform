
resource "null_resource" "null" {

  provisioner "local-exec" {

    command = "echo the value of module 1 passed to module2 is ${var.val}"
  }
}

variable "val" {}