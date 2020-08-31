resource "aws_iam_user" "user" {
  count = length(var.names)

  name = element(var.names, count.index)
  path = var.path
}

resource "aws_iam_user_login_profile" "user_login" {
  count = length(var.names)

  user                    = aws_iam_user.user[count.index].name
  pgp_key                 = var.pgp_key
  password_length         = var.password_length
  password_reset_required = var.password_reset_required
}

resource "aws_iam_access_key" "user_key" {
  count = length(var.names)

  user    = aws_iam_user.user[count.index].name
  pgp_key = var.pgp_key
}
