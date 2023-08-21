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


# output :- 

# security_group_id = {
#   "arns" = tolist([
#     "arn:aws:ec2:us-east-1:629630003655:security-group/sg-0180467a2bcb66aa0",
#     "arn:aws:ec2:us-east-1:629630003655:security-group/sg-0ee5fdff35150b93b",
#   ])
#   "filter" = toset(null) /* of object */
#   "id" = "us-east-1"
#   "ids" = tolist([
#     "sg-0180467a2bcb66aa0",
#     "sg-0ee5fdff35150b93b",
#   ])
#   "tags" = tomap(null) /* of string */
#   "timeouts" = null /* object */
#   "vpc_ids" = tolist([
#     "vpc-09680f39432cf5f91",
#     "vpc-09680f39432cf5f91",
#   ])
# }
# single = [
#   {
#     "arn" = "arn:aws:ec2:us-east-1:629630003655:security-group/sg-0180467a2bcb66aa0"
#     "description" = "default VPC security group"
#     "filter" = toset(null) /* of object */
#     "id" = "sg-0180467a2bcb66aa0"
#     "name" = "default"
#     "tags" = tomap({})
#     "timeouts" = null /* object */
#     "vpc_id" = "vpc-09680f39432cf5f91"
#   },
#   {
#     "arn" = "arn:aws:ec2:us-east-1:629630003655:security-group/sg-0ee5fdff35150b93b"
#     "description" = "launch-wizard-1 created 2023-08-19T10:42:10.931Z"
#     "filter" = toset(null) /* of object */
#     "id" = "sg-0ee5fdff35150b93b"
#     "name" = "launch-wizard-1"
#     "tags" = tomap({
#       "Name" = "allow_all"
#     })
#     "timeouts" = null /* object */
#     "vpc_id" = "vpc-09680f39432cf5f91"
#   },
# ]
