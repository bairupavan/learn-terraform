variable "Hello-world" {
  default = "Hello World!"
}

variable "number" {
  default = 100
}

variable "float" {
  default = 100.20
}

variable "boolean" {
  default = true
}

variable "list" {
  default = ["Hello World!", 100, 100.20, true]
}

variable "map" {
  default = {
    string  = "Hello World!",
    number  = 100,
    float   = 100.20,
    boolean = true
  }
}

variable "env" {}

variable "auto_num1" {}

variable "string" {}