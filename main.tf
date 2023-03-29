terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "self" {
  ami                         = "ami-0b0af3577fe5e3532"
  instance_type               = "t2.micro"
  key_name                    = "dummyWSK"
  subnet_id                   = "subnet-0d0b48a8f513bbb51"
  root_block_device {
    volume_type = "gp2"
    volume_size = 30
    encrypted   = false
  }
  tags = {
    Name = "my-instance"
  }
}