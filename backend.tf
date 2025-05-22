terraform {
  backend "s3" {
    bucket         = "revbucket123456"
    key            = "backend.tfstate"
    region         = "us-east-1"
    dynamodb_table = "revdynamodb"
    encrypt        = true
  }

  required_version = ">= 0.14.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23"
    }
  }
}
