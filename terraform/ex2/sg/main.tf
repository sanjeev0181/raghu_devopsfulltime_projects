resource "aws_security_group" "allow_tls" {
  name = "allow_tls"
  description = "Allow HTTP and SSH traffic via Terraform"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
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
    Name = "allows_tls"
  }
}

output "sg_id" {
    value = "aws_security_group.allows_tls.id"
}