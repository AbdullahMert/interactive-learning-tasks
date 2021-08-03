resource "aws_security_group" "external_by_terraform" {
  name        = "external_by_terraform"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0219ec606b05051bc"

  ingress {
    description = "TCP 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["50.194.68.230/32"]

  }

  ingress {
    description = "TCP 3306"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["50.194.68.231/32"]

  }

  ingress {
    description = "TCP 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {
    description = "TCP 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}