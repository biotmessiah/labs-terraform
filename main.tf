terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.32.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "networking" {
  source = "./modules/networking/"
}

module "computing" {
  source = "./modules/computing/"
}