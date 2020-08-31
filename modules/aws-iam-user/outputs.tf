output "user_names" {
  description = "All user names"
  value       = aws_iam_user.user.*.name
}

output "user_arns" {
  description = "The ARN assigned by AWS for this user"
  value       = aws_iam_user.user.*.arn
}

output "user_login_profile_encrypted_passwords" {
  description = "The encrypted password, base64 encoded"
  value = aws_iam_user_login_profile.user_login.*.encrypted_password
}

output "access_key_ids" {
  description = "The access key ID"
  value = aws_iam_access_key.user_key.*.id
}

output "access_key_encrypted_secrets" {
  description = "The access key secret"
  value       = aws_iam_access_key.user_key.*.encrypted_secret
}
