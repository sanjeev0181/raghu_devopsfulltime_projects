data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]  # Update the filter pattern for the desired Ubuntu version
  }

  owners = ["513442679011"]  # Canonical's AWS account ID for official Ubuntu AMIs
}

output "ami" {
  value = data.aws_ami.ubuntu.id
  
}

# resource "aws_instance" "web" {
#   ami           = "ami-024e6efaf93d85776"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }