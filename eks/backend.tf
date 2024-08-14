terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-new-bucket-harry-14-08-2024"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "terraform-lock-table-s3-new-14-08-2024"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
