output "role_name" {
  description = "Name of IAM role"
  value       = element(concat(aws_iam_role.role.*.name, [""]), 0)
}

output "role_arn" {
  description = "ARN of IAM role"
  value       = element(concat(aws_iam_role.role.*.arn, [""]), 0)
}
