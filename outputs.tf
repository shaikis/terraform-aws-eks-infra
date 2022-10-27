output "aws_region" {
  value = var.aws_region
}

output "cluster_full_name" {
  value = "${var.clusters_name_prefix}-${terraform.workspace}"
}

output "cluster_version" {
  value = var.cluster_version
}

output "cluster_api" {
  value = module.packtcluster.cluster_api
}

output "cluster_tag" {
  value = module.packtcluster.cluster_tag
}

output "worker_iam_role_arn" {
  value = module.packtcluster.worker_iam_role_arn
}

output "authconfig" {
  value = module.packtcluster.authconfig
}


####  VPC Module related parameters##################

output "vpc_id" {
  value = module.vpc.eks_cluster_vpc_id
}

output "private_subnet_ids" {
  value = module.vpc.eks_private_subnet_ids
}

output "public_subnet_ids" {
  value = module.vpc.eks_public_subnet_ids
}