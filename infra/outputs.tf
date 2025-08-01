output "ansible-controller_ip" {
  value = aws_instance.ansible-controller.public_ip
}

output "remote-server_ip" {
  value = aws_instance.remote-server.public_ip
}

output "remote-server2_ip" {
  value = aws_instance.remote-server2.public_ip
}