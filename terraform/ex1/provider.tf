terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region     = "us-east-2"
  access_key = "AKIA34XLUBOUBCSLCQFN"
  secret_key = "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"
}