provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key
}

variable "ami" {
    description = "ami value"   
}

variable "instance_type" {
    description = "instance type"
}

variable "key" {
}