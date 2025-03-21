# VPC Input Variables

# AWS Region
variable "aws_region" {
  description = "Region Name"
  type        = string
  default     = "eu-north-1"
}

variable "parameters" {
  type = set(string)
}