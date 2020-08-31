output "group_name" {
  description = "IAM group name"
  value       = aws_iam_group.group.name
}

output "group_users" {
  description = "List of IAM users in IAM group"
  value       = flatten(aws_iam_group_membership.group_membership.*.users)
}

output "group_roles" {
  description = "List of ARNs of IAM roles which members of IAM group can assume"
  value       = var.assumable_roles
}
