resource "aws_instance" "web" {
  ami           = "ami-053b0d53c279acc90" # data.aws_ami.ubuntu.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_id]


  tags = {
    Name = "HelloWorld"
  }
}

data "aws_security_group" "selected" {
    name = "launch-wizard-1"
}

variable "sg_id" {}