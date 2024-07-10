terraform {
  backend "s3" {
    bucket         = "s3-from-terraform"
    key            = "sneha/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}