resource "aws_security_group" "allow_homePort_veronica" {
   name  = "allow_homePort_veronica"
   description = "Allow port 22 as inbound for home IP"

   ingress {
      description = "Open port 22 for home IP"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
   }

   egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
   }

   tags = {
      Name = "allow_homePort_veronica"
   }
}
