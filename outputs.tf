output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "instance_name" {
  description = "Name tag of the EC2 instance"
  value       = aws_instance.app_server.tags["Name"]
}
