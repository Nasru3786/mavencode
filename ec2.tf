
resource "aws_instance" "web" {
  ami                    = "ami-076e3a557efe1aa9c"
  instance_type          = "t2.micro"
  key_name               = "mumbai"
  subnet_id              = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "my_instance"
  }
}