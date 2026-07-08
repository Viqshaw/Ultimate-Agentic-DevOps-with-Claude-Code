# S3 backend for remote state management
#
# INSTRUCTIONS:
# 1. First run: terraform init (without this backend configured)
# 2. Create the S3 bucket and DynamoDB table for state management
# 3. Uncomment the backend block below
# 4. Run: terraform init -migrate-state
#
# This approach ensures Terraform can create the state bucket without circular dependencies.

# terraform {
#   backend "s3" {
#     bucket         = "terraform-state-bucket-name"  # Change to your S3 bucket name
#     key            = "portfolio-site/terraform.tfstate"
#     region         = "ap-south-1"
#     encrypt        = true
#     dynamodb_table = "terraform-locks"
#   }
# }
