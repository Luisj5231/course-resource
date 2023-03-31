variable "key_name_ec2" {
  type        = string
  description = "Nombre del las llaves de acceso a las instancia EC2 (PEM)"
  default     = "dummyWSK"
}

variable "ec2_instance_type" {
  type        = string
  description = "Tipo de instancia EC2 a desplegar"
  default     = "t2.micro"
}

variable "ami_ID" {
  type        = string
  description = "ID del ami a utilizar en la VM"
  default     = "ami-0b0af3577fe5e3532"
}

variable "instance_name" {
  type        = string
  description = "Nombre de la instancia a crear"
  default     = "myServer"
}