variable "aws_region" {
  type        = string
  description = "Region de aws"
  default     = "eu-west-1"
}

variable "aws_profile" {
  type        = string
  description = "Profile de aws para accesso"
  default     = "default"
}

variable "aws_ami" {
  type        = string
  description = "imagen Ami, tiene que ir acorde con la region en este caso Ireland "
  default     = "ami-096f43ef67d75e998"
}

variable "aws_instance_type" {
  type        = string
  description = "Tipo de instancia ec2"
  default     = "t2.micro"
}
