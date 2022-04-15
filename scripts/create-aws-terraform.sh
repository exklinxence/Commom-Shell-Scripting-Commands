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
EOF
