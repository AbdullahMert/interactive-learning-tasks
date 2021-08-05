output "UserName" {
    value= aws_iam_user.bob.name
}

output "GroupName" {
    value= aws_iam_group.sysusers.name
}