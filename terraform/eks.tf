module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  # VPC existant test-kumar
  vpc_id     = "vpc-02506673958ac0852"
  subnet_ids = [
    "subnet-08c94b55ae2426145",  # PrivateSubnet01
    "subnet-0ab862c0019673e2a",  # PrivateSubnet02
  ]

  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true

  create_kms_key            = false
  cluster_encryption_config = {}

  create_iam_role = false
  iam_role_arn    = var.cluster_role_arn

  enable_irsa                              = false
  enable_cluster_creator_admin_permissions = false

  eks_managed_node_groups = {
    general = {
      instance_types = [var.instance_type]
      min_size       = 2
      max_size       = 4
      desired_size   = 2

      subnet_ids = [
        "subnet-08c94b55ae2426145",  # PrivateSubnet01
        "subnet-0ab862c0019673e2a",  # PrivateSubnet02
      ]

      create_iam_role = false
      iam_role_arn    = var.node_role_arn
    }
  }

  tags = {
    project    = "gitops-demo"
    managed-by = "terraform"
  }
}
