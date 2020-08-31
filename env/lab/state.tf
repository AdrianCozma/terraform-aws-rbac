terraform {
  backend "s3" {
    bucket         = "lab-terraform-state"
    key            = "aws-rbac/terraform.tfstate"
    dynamodb_table = "lab-terraform-state-lock"
    region         = "eu-central-1"
  }
}
