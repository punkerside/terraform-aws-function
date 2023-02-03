terraform {
  required_version = ">= 0.15.0"

  required_providers {
    aws    = ">= 4.20.0"
    random = ">= 3.1.2"
  }
}

provider "aws" {
  region = "us-east-1"
}