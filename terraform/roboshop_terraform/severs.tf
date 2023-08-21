resource "aws_instance" "web" {
  ami           = "ami-053b0d53c279acc90" # data.aws_ami.ubuntu.image_id
  instance_type =  var.instance_type # "t2.micro"
  # vpc_security_group_ids - Associated security groups in a non-default VPC.
  vpc_security_group_ids = [ data.aws_security_group.selected.id ]
  tags = {
    Name = "HelloWorld"
  }
}

data "aws_security_group" "selected" {
    name = "launch-wizard-1"
}