#VPC
resource "aws_vpc" "principal" {
  cidr_block = "10.0.0.0/16"
}

# Subnet
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.principal.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}