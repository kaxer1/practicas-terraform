module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "youtube-eks"
  cluster_version = "1.29"

  vpc_id                          = module.vpc.vpc_id
  subnet_ids                      = module.vpc.private_subnets
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  cluster_addons = {
    coredns = {
      resolve_conflict = "OVERWRITE"
    }
    kube-proxy = {
      resolve_conflict = "OVERWRITE"
    }
    vpc-cni = {
      resolve_conflict = "OVERWRITE"
    }
  }


#   manage_aws_auth_configmap = true

  eks_managed_node_groups = {
    node-group = {
        desired_capacity = 1
      max_size     = 2
      min_size     = 1
      instance_types = ["t3.medium"]
      tags = {
        env = "tutorial"
      }
    }
  }

  tags = {
    env = "tutorial"
    Terraform   = "true"
  }

}