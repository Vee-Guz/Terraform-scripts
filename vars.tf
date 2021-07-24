variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
   default = "us-west-1"
}

variable "AMIS" {
   type = map(string)
   default = {
      us-west-1 = "ami-0d382e80be7ffdae5"
      us-east-1 = "ami-0f6c23a2bfb63fbf1"
   }
}
