# AWS RBAC with Terraform

## Introduction
This repo contains the terraform modules and projects needed to create RBAC (users, groups, roles) for an AWS account.

## Prerequisites
- An AWS account
  - awscli configured with the proper access keys
- Terraform v0.12 or above

## Terraform init
The most important aspect of Terraform is the state file. This ensures consistency between the infrastructure written as code 
and what is currently provisioned in the AWS cloud account. 

For this project we are using S3 as the backend to store state.
We are also using Dynamo DB to enable the state locking mechanism, to prevent concurrent changes to the infrastructure.

Steps to initialise terraform project:
1. Navigate to the terraform project directory for the respective environment e.g `cd env/lab`
2. Run `terraform init`
    - this step assumes that [state storage objects](./env/lab/state-file-storage/backend.tf) have already been created.

## Terraform plan
The `terraform plan` tells us what changes, additions or deletions Terraform will perform on the target AWS account.
This data is provided as console output.

***Note:*** If you are making changes to a critical project, inspect the output carefully, and make sure you know exactly what Terraform will do.

## Terraform apply
`terraform apply` will perform `terraform plan`, then ask you to confirm the changes.

Once confirmed, Terraform will provision the resources on the target AWS account.
