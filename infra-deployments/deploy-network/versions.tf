terraform {

  backend "s3" {
    bucket = "aws-terraform-demo"
    key    = "dev/eks-with-tf/network.tfstate"
    region = "eu-north-1"

    dynamodb_table = "vpc-solution"
  }
}

provider "aws" {
  region = var.aws_region
}