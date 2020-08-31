variable "name" {
  description = "Name of IAM group"
  type        = string
}

variable "group_users" {
  description = "List of IAM users to add to the group"
  type        = list(string)
  default     = []
}

variable "assumable_roles" {
  description = "List of IAM roles that the group can assume"
  type        = list(string)
  default     = []
}
