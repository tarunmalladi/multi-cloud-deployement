################################
# AWS Provider
################################
provider "aws" {
  region = var.aws_region
}

################################
# GCP Provider
################################
provider "google" {
  project     = var.gcp_project_id
  region      = var.gcp_region
  zone        = var.gcp_zone
  credentials = file(var.gcp_credentials_file)
}