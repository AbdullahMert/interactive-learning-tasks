resource "aws_iam_user" "bob" {
  name = "bob"
  path = "/system/"

  tags = {
    Team = "DevOps"
  }
}


resource "aws_iam_group" "sysusers" {
  name = "sysusers"
  path = "/users/"
}


resource "aws_iam_user_group_membership" "BobSystem" {
  user = aws_iam_user.bob.name

  groups = [
    aws_iam_group.sysusers.name,

  ]
}