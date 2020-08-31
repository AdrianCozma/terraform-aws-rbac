# Terraform module for creating AWS assumable Roles

The purpose of this module is to create AWS IAM roles that can be assumed by an individual user or by members of a group.

## Usage Example
```hcl
module "my_role" {
  source = "relative path to the modules/aws-iam-role directory"

  name                   = "MyRole"
  role_policies          = "List of ARNs of IAM policies to attach to IAM role"

  trust_arns = [
    "arn:aws:iam::${data.aws_caller_identity.iam.account_id}:root"
  ]
}
```

The input variables and their description can be found in the [variables](./vars.tf) file.