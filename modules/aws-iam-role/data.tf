data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.trust_arns
    }

    principals {
      type        = "Service"
      identifiers = var.trust_services
    }
  }
}
