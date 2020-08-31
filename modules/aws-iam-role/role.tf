resource "aws_iam_role" "role" {
  name        = var.name
  description = var.description

  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

resource "aws_iam_role_policy_attachment" "role_admin_policy" {
  count = var.attach_admin_policy ? 1 : 0

  role       = aws_iam_role.role.name
  policy_arn = var.admin_role_policy_arn
}


resource "aws_iam_role_policy_attachment" "role_readonly_policy" {
  count = var.attach_readonly_policy ? 1 : 0

  role       = aws_iam_role.role.name
  policy_arn = var.readonly_role_policy_arn
}

resource "aws_iam_role_policy_attachment" "role_policies" {
  count = length(var.role_policies)

  role       = aws_iam_role.role.name
  policy_arn = element(var.role_policies, count.index)
}
