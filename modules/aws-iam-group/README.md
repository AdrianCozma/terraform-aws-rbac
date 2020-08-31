# Terraform module for creating AWS groups

The purpose of this module is to create AWS IAM groups that can assume a number of predefined or custom AWS Roles.

## Usage Example
```hcl
module "my_group" {
  source = "relative path to the modules/aws-iam-group directory"

  name            = "MyGroup"
  assumable_roles = ["List of pre-exiting, assumable roles"]

  group_users = ["List of pre-exiting users to be added to this group"]

}
```

The input variables and their description can be found in the [variables](./vars.tf) file.
