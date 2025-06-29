terraform {
  required_version = "1.12.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}

resource "aws_s3_bucket" "msa-app-bucket" {
  bucket = "msa-app-files"

  tags = {
    Name        = "MSA App Bucket"
    Environment = "Dev"
    Owner       = "Luan de Oliveira"
    novatag     = "blabla"
  }
}