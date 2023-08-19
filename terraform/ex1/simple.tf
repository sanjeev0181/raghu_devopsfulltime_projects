data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]  # Update the filter pattern for the desired Ubuntu version
  }

  filter {
        name = "virtualization - type"
        values = ["hvm"]
  }

}

output "test" {
  value = data.aws_ami.ubuntu.image_id
}

# resource "aws_instance" "web" {
#   ami           = "ami-024e6efaf93d85776"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }