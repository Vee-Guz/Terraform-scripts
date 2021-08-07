resource "aws_instance" "DEVOPS" {
   ami            = var.AMIS[var.AWS_REGION]
   instance_type  = "t2.micro"
   key_name       = "veronica.guzman"
   tags = {
      Name = "Veronica Terraform Linux"
   }
}

resource "aws_vpc" "vpc-vero" {
   cidr_block = "172.0.0.0/16"
   tags = {
      Name = "vero-vpc"
   }
}

resource "aws_subnet" "subnet-vero" {
   vpc_id   = aws_vpc.vpc-vero.id
   cidr_block  = "172.1.0.0/24"
   map_public_ip_on_launch = true
   depends_on  = [aws_internet_gateway.vero-gateway]
}

resource "aws_internet_gateway" "vero-gateway" {
   vpc_id = aws_vpc.vpc-vero.id
}

resource "aws_security_group" "allow_ssh_veronica" {
   name  = "allow_ssh_veronica"
   description = "Allow port 22 as inbound for home IP"
   vpc_id   = aws_vcp.vpc-vero.id
   ingress {
      description = "SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["76.216.1.39/32"]
   }

   egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
      Name = "allow_ssh_veronica"
   }
}

