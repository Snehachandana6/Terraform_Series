provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  instance_type = "t3.micro"
  ami = "ami-06c68f701d8090592"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "s3-from-terraform"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
