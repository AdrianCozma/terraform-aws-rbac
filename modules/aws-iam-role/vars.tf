variable "name" {
  description = "IAM role name"
  type        = string
}

variable "description" {
  description = "IAM Role description"
  type        = string
  default     = ""
}

variable "trust_services" {
  description = "AWS Services that can assume these roles"
  type        = list(string)
  default     = []
}

variable "trust_arns" {
  description = "ARNs of AWS entities who can assume this role"
  type        = list(string)
  default     = []
}

variable "role_policies" {
  description = "List of ARNs of IAM policies to attach to IAM role"
  type        = list(string)
  default     = []
}

variable "admin_role_policy_arn" {
  description = "Policy ARN to use for admin role"
  type        = string
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

variable "readonly_role_policy_arn" {
  description = "Policy ARN to use for readonly role"
  type        = string
  default     = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

variable "attach_admin_policy" {
  description = "Whether to attach an admin policy to a role"
  type        = bool
  default     = false
}

variable "attach_readonly_policy" {
  description = "Whether to attach a readonly policy to a role"
  type        = bool
  default     = false
}
