# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }

resource "aws_instance" "web" {
  ami           = "ami-053b0d53c279acc90" # data.aws_ami.ubuntu.image_id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}


output "test" {
  value = aws_instance.web.public_ip
}