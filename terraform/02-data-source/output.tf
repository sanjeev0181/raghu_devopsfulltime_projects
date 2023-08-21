output "security_group_id" {
    value = data.aws_security_groups.test
}

output "single" {
    value = data.aws_security_groups.single
}