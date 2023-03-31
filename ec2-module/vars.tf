variable "amiId" {
  type        = string
  description = "ID of the AMI used"
}

variable "instanceType" {
  type        = string
  description = "Type of the instance"
}

variable "subnetId" {
  type        = string
  description = "The VPC Subnet ID to launch in"
}
/*
variable "vpc_security_group_id" {
  type        = list(any)
  description = "A list of security group IDs to associate with"
}

variable "publicIPAddress" {
  type        = bool
  description = "Set True for enabling Public IP Association"
}

variable "privateIP" {
  type        = string
  description = "none"
}*/

variable "InstanceName" {
  type        = string
  description = "Instance name for identifaction"
  default = "Web"
}

variable "EC2keyName" {
  type = string
  description = "Name of the Keys for accessing the EC2"
  default = "dummyWSK"
}