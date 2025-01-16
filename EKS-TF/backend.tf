terraform {
  backend "s3" {
    bucket         = "statefile-threetier-proj-123"
    region         = "us-east-1"
    key            = "statefile-threetier-proj-123/EKS-TF/terraform.tfstate"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
