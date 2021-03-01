# Luis Merino : Cap1tulo 1 del liveproject 
#
# Automating Infrastructure for an E-commerce Website with Terraform and AWS
# voy a utilizar eu-west-1
# y para extraer la ami utilizamos un resource data para hacer 
# query de la ami usando el owner de Cannonical

provider "aws" {
  region = var.aws_region
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}
resource "aws_instance" "holamundo" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.aws_instance_type
  tags = {
    Name = "Hola Mundo"
  }
}
