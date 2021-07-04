terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.12.31"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

module "vpc" {
  source = "./modules/vpc"
  env    = "devops_course"
  az     = "eu-west-2a"
}

module "ec2" {
  source    = "./modules/ec2"
  subnet_id = module.vpc.public_subnet_id
  sg_ids    = [module.vpc.public_sg_id]
  name      = "web"
  env       = "devops_course"
  key_name  = "devops-cource"
}



























//terraform {
// required_providers {
//    aws = {
//      source  = "hashicorp/aws"
//      version = "~> 3.27"
//    }
//  }
//  required_version = ">= 0.12.31"
//}
//
//provider "aws" {
//  profile = "default"
//  region  = "eu-west-2"
//  shared_credentials_file = "/home/vadim/.aws/credentials"
//}
//
//resource "aws_instance" "test-instance" {
//  ami           = "ami-0194c3e07668a7e36"
//  instance_type = "t2.micro"
//  key_name = "devops-cource"
//  security_groups = ["access-ssh-from-public"]
//
//  count = 2
//
//  tags = {
//    Name = "InstanceFromTerraform"
//  }
//}