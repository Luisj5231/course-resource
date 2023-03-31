output "ec2_instance_private_ip" {
  value       = aws_instance.ec2_instance.private_ip
  description = "Value of the Private IP"
}

output "ec2_instance_data" {
  value = aws_instance.ec2_instance
  description = "Specs of the primary network interface"
}