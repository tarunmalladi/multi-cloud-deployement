terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-aw"
    key            = "multi-cloud-deployement/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}


