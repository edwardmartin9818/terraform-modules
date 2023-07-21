terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-2"
}

module "ec2_instance" {
  source            = "../modules/my_ec2_instance"
  ec2_ami_id        = "ami-020737107b4baaa50"
  ec2_instance_name = "InstanceFromModule"
}