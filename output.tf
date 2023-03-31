output "Private_IP" {
  value       = module.instancia_ec2.ec2_instance_data
  description = "datos de las instancia"
}