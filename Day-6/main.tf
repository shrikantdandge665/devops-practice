provider "aws" {
  region = "us-east-1"
}

variable "ami" {
    description = "ami value"
}

variable "type" {
  description = "instance type"
}

variable "key" {
    description = "key"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = var.instance_type
  key = var.key
}