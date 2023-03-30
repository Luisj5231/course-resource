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

#VPC
resource "aws_vpc" "principal" {
  cidr_block = "10.0.0.0/16"
}

# Subnet
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.principal.id
  cidr_block = "10.9.0.0/24"

  tags = {
    Name = "Main"
  }
}

# VM
resource "aws_instance" "self" {
  ami                         = var.ami_ID
  instance_type               = var.ec2_instance_type
  key_name                    = var.key_name_ec2
  subnet_id                   = aws_subnet.main.id
  root_block_device {
    volume_type = "gp2"
    volume_size = 30
    encrypted   = false
  }
  tags = {
    Name = var.instance_name
  }
}

# boot, bootefi, lvm2