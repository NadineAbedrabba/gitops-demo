output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_oidc_issuer_url" {
  description = "Needed for IRSA — AWS Load Balancer Controller"
  value       = module.eks.cluster_oidc_issuer_url
}

output "node_role_arn" {
  value = module.eks.eks_managed_node_groups["general"].iam_role_arn
}
