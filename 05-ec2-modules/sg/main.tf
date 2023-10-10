data "aws_security_group" "sg" {
  name = "allow-all"
}

output "sg_id" {
  value = data.aws_security_group.sg.id
}