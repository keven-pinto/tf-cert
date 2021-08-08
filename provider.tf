terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.53.0"
    }
  }
}

provider "aws" {
  region     = "eu-west-2"
  access_key = file("./access_key")
  secret_key = file("./secret_key")
}