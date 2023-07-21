resource "aws_instance" "app_server" {
  ami           = var.ec2_ami_id
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2_instance_name
  }
}