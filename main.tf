provider "aws" {
  profile = "default"
  region  = var.region
}

data "aws_ami" "linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "app_server" {
  ami               = data.aws_ami.linux.id
  instance_type     = var.instance_type
  availability_zone = var.az_1a

  tags = {
    Name = var.instance_name
  }
}
