data "aws_ami" "image" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]

}
resource "aws_instance" "frontend" {
  ami           = data.aws_ami.image.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

output "public_ip" {
  value = aws_instance.frontend.public_ip
}