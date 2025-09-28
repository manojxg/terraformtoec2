variable "aws_region" {
  default = "ap-south-1"
}

variable "aws_profile" {
  default = "jenkins-profile"  # Set to "" if using EC2 IAM role
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0abcdef1234567890"  # Replace with your AMI
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {
  description = "Existing subnet ID"
}

variable "security_group_ids" {
  description = "List of existing security group IDs"
  type        = list(string)
}

variable "instance_profile_name" {
  description = "IAM instance profile name"
}
