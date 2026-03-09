terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Optionnel mais recommandé — remote state sur S3
  # backend "s3" {
  #   bucket = "your-tfstate-bucket"
  #   key    = "gitops-demo/terraform.tfstate"
  #   region = "eu-west-1"
  # }
}

provider "aws" {
  region = var.region
  profile = "artplan-legacy"
}
