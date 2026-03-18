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

