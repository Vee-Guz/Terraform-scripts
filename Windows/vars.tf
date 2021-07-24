variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
   default = "us-west-1"
}

#deploying Windows
variable "AMIS" {
   type = map(string)
   default = {
      us-west-1 = "ami-0f6c23a2bfb63fbf1"
   }
}
