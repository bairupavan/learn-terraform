output "Hello-world" {
  value = var.Hello-world
}

# combination of strings printing
output "strings" {
  value = "the value is = ${var.Hello-world}"
}

output "number" {
  value = var.number
}

output "float" {
  value = var.float
}

output "boolean" {
  value = var.boolean
}

# we print with the index of list
output "list" {
  value = var.list[2]
}

# we print with the key of the map
output "map" {
  value = var.map["boolean"]
}

output "env" {
  value = var.env
}

output "auto_num1" {
  value = var.auto_num1
}

output "string" {
  value = var.string
}