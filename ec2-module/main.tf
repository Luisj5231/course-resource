resource "aws_instance" "ec2_instance" {
  ami                         = var.amiId
  instance_type               = var.instanceType
  subnet_id                   = var.subnetId
  key_name = var.EC2keyName
  disable_api_termination     = false
  

  
  tags = {
    Name = "instances-${var.InstanceName}"
  }
}

