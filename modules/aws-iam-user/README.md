# Terraform module for creating AWS users

The purpose of this module is to create AWS IAM users with a login profile and AWS CLI access keys.

## Usage Example
```hcl
module "users" {
  source = "Relative path to the modules/aws-iam-user directory"

  names = ["List of user names to be created"]
  pgp_key = "keybase:<user with a pgp key uploaded to keybase.io> or a base64 encoded pgp key used to encrypt secrets"
}
```

The input variables and their description can be found in the [variables](./vars.tf) file.
