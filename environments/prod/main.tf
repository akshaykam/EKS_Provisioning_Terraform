# environments/prod/main.tf
module "eks" {
  source = "../../modules/eks"

  # Pass environment-specific variables
  vpc_id           = var.vpc_id
  subnet_id_1      = var.subnet_id_1
  subnet_id_2      = var.subnet_id_2
  security_group_id = var.security_group_id
  eks_role_arn     = var.eks_role_arn
}

# Outputs specific to the prod environment
output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "EKS Cluster Name"
  value       = module.eks.cluster_name
}