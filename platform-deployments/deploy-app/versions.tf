terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.22.0, != 5.24"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.20"
    }
  }

  backend "s3" {
    bucket = "aws-terraform-demo"

    key = "dev/eks-with-tf/mediawiki.tfstate"

    region = "eu-north-1"

#   dynamodb_table = "vpc-solution"
  }
}