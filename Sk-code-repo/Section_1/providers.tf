terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.17.1"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

provider "github" {
  token = "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"
}
