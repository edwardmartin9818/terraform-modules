# This is an example TF module
This is awesome :3

## Usage
~~~
module "ec2_instance" {
  source            = "github.com/edwardmartin9818/terraform-modules/modules/my_ec2_instance"
  ec2_ami_id        = "ami-xxxxxxxxxxxxxxx"
  ec2_instance_name = "InstanceName"
}
~~~
