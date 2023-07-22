include "root" {
  path   = find_in_parent_folders()
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
    provider "aws" {
    region = "eu-west-2"
    }
    EOF
}

inputs = {
    ec2_ami_id        = "ami-020737107b4baaa50"
    ec2_instance_name = "TestTerragrunt"
}