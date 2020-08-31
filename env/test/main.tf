provider "aws" {
  region = "eu-central-1"
}

data "aws_caller_identity" "iam" {}

module "users" {
  source = "../../modules/aws-iam-user"

  names = ["Eugene", "Milo", "Abigail", "Aidan", "Santiago", "Felix", "Morgan"]
  pgp_key = "keybase:adriancozma"
}

module "admin_role" {
  source = "../../modules/aws-iam-role"

  name                = "Admin"
  attach_admin_policy = true

  trust_arns = [
    "arn:aws:iam::${data.aws_caller_identity.iam.account_id}:root"
  ]
}

module "readonly_role" {
  source = "../../modules/aws-iam-role"

  name                   = "ReadOnly"
  attach_readonly_policy = true

  trust_arns = [
    "arn:aws:iam::${data.aws_caller_identity.iam.account_id}:root"
  ]
}

module "ops_group" {
  source = "../../modules/aws-iam-group"

  name            = "Ops"
  assumable_roles = [module.admin_role.role_arn]

  group_users = ["Santiago", "Felix", "Morgan"]

}

module "dev_group" {
  source = "../../modules/aws-iam-group"

  name            = "Developers"
  assumable_roles = [module.readonly_role.role_arn]

  group_users = ["Eugene", "Milo", "Abigail", "Aidan"]
}
