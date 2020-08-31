resource "aws_iam_group" "group" {
  name = var.name
}

resource "aws_iam_group_membership" "group_membership" {
  count = length(var.group_users) > 0 ? 1 : 0

  name  = var.name
  group = aws_iam_group.group.id
  users = var.group_users
}

resource "aws_iam_policy" "group_role_policy" {
  name = var.name
  policy = data.aws_iam_policy_document.assume_role_policy.json
}

resource "aws_iam_group_policy_attachment" "group_policy_attachment" {
  group      = aws_iam_group.group.id
  policy_arn = aws_iam_policy.group_role_policy.id
}
