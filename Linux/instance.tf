resource "aws_instance" "DEVOPS" {
   ami            = var.AMI[var.AWS_REGION]
   instance_type  = "t2.micro"

   tags = {
      Name = "Veronica Terraform Test - Linux"
   }
}
