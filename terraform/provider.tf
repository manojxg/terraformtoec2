provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile  # Optional if using EC2 IAM role
}
