data "aws_security_group" "selected" {
    name = "launch-wizard-1"
}

# data "aws_security_groups" "test" {
# #   tags = {
# #     Application = "k8s"
# #     Environment = "dev"
# #   }
# }

# data "aws_security_group" "single" {
#     count = length(data.aws_security_groups.test.ids)
#     id = data.aws_security_groups.test.ids[count.index]
# }

