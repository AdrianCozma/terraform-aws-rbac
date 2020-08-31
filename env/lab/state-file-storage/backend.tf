provider "aws" {
  region = "eu-central-1"
}

#######################################
# Create a s3 bucket for remote state #
#######################################
resource "aws_s3_bucket" "lab-terraform-state" {
  bucket = "lab-terraform-state"

  versioning {
    enabled = true
  }
}

######################################################
# Create a dynamodb table for locking the state file #
######################################################
resource "aws_dynamodb_table" "lab-terraform-state-lock" {
  name           = "lab-terraform-state-lock"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}
