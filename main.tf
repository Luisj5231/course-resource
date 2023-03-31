
# VM
module "instancia_ec2" {
  source       = "git::https://github.com/Luisj5231/TerraformModules.git//ec2-module"
  #source       = "/home/z690/Documents/terrraform-course/ec2-module"
  amiId        = var.ami_ID
  instanceType = var.ec2_instance_type
  EC2keyName   = var.key_name_ec2
  subnetId     = aws_subnet.main.id
  InstanceName = "Web"
  #associate_public_ip_address = "true"
}

/*
resource "aws_instance" "self" {
  ami           = var.ami_ID
  instance_type = var.ec2_instance_type
  key_name      = var.key_name_ec2
  subnet_id     = aws_subnet.main.id
  root_block_device {
    volume_type = "gp2"
    volume_size = 30
    encrypted   = false
  }
  tags = {
    Name = var.instance_name
  }
}
*/
# boot, bootefi, lvm2