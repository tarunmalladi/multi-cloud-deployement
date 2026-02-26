output "aws_public_ip" {
  value = aws_instance.aws_nginx.public_ip
}

output "gcp_public_ip" {
  value = google_compute_instance.gcp_nginx.network_interface[0].access_config[0].nat_ip
}