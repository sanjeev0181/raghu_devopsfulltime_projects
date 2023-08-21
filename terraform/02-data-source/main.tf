# data "aws_security_group" "selected" {
#     name = "launch-wizard-1"
# }

data "aws_security_groups" "test" {
#   tags = {
#     Application = "k8s"
#     Environment = "dev"
#   }
}

data "aws_security_groups" "single" {
    count = lenght(data.aws_security_groups.single.ids)
    id = data.aws_security_groups.ids[count.index]
}

