variable "case" {
  default = "pavan"
}

output "case" {
  value = upper(var.case)
}

