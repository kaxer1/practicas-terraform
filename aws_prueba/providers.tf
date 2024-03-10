terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.37.0"
    }
  }
  required_version = "~>1.5.0"
}

provider "aws" {
  region                   = "us-east-1"
  # shared_credentials_files = ["~/.aws/creds"]
  # shared_config_files      = ["~/.aws/conf"]
  # profile                  = "admin"
}
