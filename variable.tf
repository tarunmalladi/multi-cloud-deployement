#########################
# AWS Variables
#########################

variable "aws_region" {
  default = "ap-south-1"
}

#########################
# GCP Variables
#########################

variable "gcp_project_id" {
  description = "GCP Project ID"
}

variable "gcp_region" {
  default = "asia-south1"
}

variable "gcp_zone" {
  default = "asia-south1-a"
}

variable "gcp_credentials_file" {
  description = "Path to GCP service account JSON"
}

#########################
# Backend variables (used for documentation / CLI - not referenced in backend block)
#########################

variable "tfstate_s3_bucket" {
  description = "S3 bucket name to store Terraform state (recommend creating it manually)"
  type        = string
  default     = ""
}

variable "tfstate_s3_key" {
  description = "S3 key path for Terraform state (e.g. project/terraform.tfstate)"
  type        = string
  default     = "multi-cloud-deployement/terraform.tfstate"
}

variable "tfstate_region" {
  description = "AWS region for the S3 bucket"
  default     = "ap-south-1"
}

variable "tfstate_dynamodb_table" {
  description = "DynamoDB table name used for state locking"
  default     = "terraform-state-lock"
}