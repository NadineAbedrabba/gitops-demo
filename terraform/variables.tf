variable "region" {
  default = "eu-west-1"
}

variable "cluster_name" {
  default = "gitops-demo"
}

variable "cluster_version" {
  default = "1.29"
}

variable "instance_type" {
  default = "t3.medium"
}
variable "cluster_role_arn" {
  default = "arn:aws:iam::570632831692:role/myAmazonEKSClusterRole"
}

variable "node_role_arn" {
  default = "arn:aws:iam::570632831692:role/AmazonEKSNodeRole"
}
