resource "aws_security_group" "allow_tls" {

  vpc_id = aws_vpc.main.id

  ingress {
    description = "ssh from VPC"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "ssh from VPC"
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "sg_1"
  }
}