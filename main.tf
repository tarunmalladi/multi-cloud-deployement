################################
# AWS EC2 Instance
################################
resource "aws_instance" "aws_nginx" {
  ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2 (ap-south-1)
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1 -y
              systemctl start nginx
              systemctl enable nginx
              echo "hello tarun-aws" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = "tarun-aws-nginx"
  }
}

################################
# GCP Compute Engine Instance
################################
resource "google_compute_instance" "gcp_nginx" {
  name         = "tarun-gcp-nginx"
  machine_type = "e2-micro"
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl start nginx
              systemctl enable nginx
              echo "hello tarun-gcp" > /var/www/html/index.nginx-debian.html
              EOF
}