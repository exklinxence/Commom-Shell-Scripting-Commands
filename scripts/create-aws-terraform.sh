cat <<  EOF > terraform.tf
terraform {
  cloud {
    organization = "klinz-pluralsight"

    workspaces {
      name = "aws-networking-deep-dive-elb-02"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
} 

locals {
  aws_region       = "us-east-1"
  environment_name = "staging"
  tags = {
    ops_env              = "$1"
    ops_managed_by       = "terraform",
    ops_source_repo      = "sample-project",
    ops_source_repo_path = "exklinxence/sample-project",
    ops_owners           = "collins",
  }
}
EOF


cat <<  END > variable.tf 
variable "aws_region" {
type = string
default = "us-east-1"
description ="region for Infrastructure deployment"
}
END

terraform init

terraform fmt
