terraform {
  source = "github.com/edwardmartin9818/terraform-modules/modules//my_ec2_instance"
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
    provider "aws" {
    region = "eu-west-1"
    }
    EOF
}

inputs = {
    ec2_ami_id        = "ami-06935448000742e6b"
    ec2_instance_name = "DevTerragrunt"
}