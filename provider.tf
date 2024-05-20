provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket         = "dunhuang-terraform-bucket"
    key            = "dunhuang/terraform/s3/bucket01/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "my-terraform-lock-table"
  }
}
