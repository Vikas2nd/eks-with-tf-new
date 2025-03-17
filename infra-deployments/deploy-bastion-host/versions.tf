terraform {
  #   required_version = ">= 4.48.0"
  backend "s3" {
    bucket = "aws-terraform-demo"
    key    = "dev/eks-with-tf/bastionHost.tfstate"
    region = "eu-north-1"

    dynamodb_table = "vpc-solution"
  }
}

provider "aws" {
  region = var.aws_region
}