# environments/prod/variables.tf
variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
  type        = string
}

variable "subnet_id_1" {
  description = "First subnet ID for EKS"
  type        = string
}

variable "subnet_id_2" {
  description = "Second subnet ID for EKS"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for EKS"
  type        = string
}

variable "eks_role_arn" {
  description = "IAM Role ARN for EKS cluster"
  type        = string
}