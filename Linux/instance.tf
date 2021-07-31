resource "aws_instance" "DEVOPS" {
   ami            = var.AMIS[var.AWS_REGION]
   instance_type  = "t2.micro"
   key_name       = "veronica.guzman"
   tags = {
      Name = "Veronica Terraform Test - Linux"
   }
}
