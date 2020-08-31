output "users_arns" {
  description = "The ARN assigned by AWS for this user"
  value       = module.users.user_arns
}

output "users_login_profile_encrypted_passwords" {
  description = "The encrypted password, base64 encoded"
  value       = module.users.user_login_profile_encrypted_passwords
}

output "users_access_key_ids" {
  description = "The access key ID"
  value       = module.users.access_key_ids
}

output "users_access_key_encrypted_secrets" {
  description = "The access key secret"
  value       = module.users.access_key_encrypted_secrets
}

output "admin_role_arn" {
  description = "IAM role ARN"
  value       = module.admin_role.role_arn
}

output "readonly_role_arn" {
  description = "IAM role ARN"
  value       = module.readonly_role.role_arn
}

output "ops_group_name" {
  description = "IAM group name"
  value       = module.ops_group.group_name
}

output "ops_group_users" {
  description = "IAM group users list"
  value       = module.ops_group.group_users
}

output "ops_group_assumable_roles" {
  description = "IAM group assumable roles"
  value       = module.ops_group.group_roles
}

output "dev_group_name" {
  description = "IAM group name"
  value       = module.dev_group.group_name
}

output "dev_group_users" {
  description = "IAM group users list"
  value       = module.dev_group.group_users
}

output "dev_group_assumable_roles" {
  description = "IAM group assumable roles"
  value       = module.dev_group.group_roles
}
