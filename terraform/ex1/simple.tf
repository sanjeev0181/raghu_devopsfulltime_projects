resource "aws_instance" "web" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}