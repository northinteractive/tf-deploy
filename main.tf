terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

variable "instance_type" {
  type = string
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "terraform_exam_ec2" {
  ami               = "ami-02e136e904f3da870"
  instance_type     = var.instance_type
  availability_zone = "us-east-1b"

  subnet_id = "subnet-13b5c339"

  tags = {
    Name      = "terraform_exam_prep"
    Terraform = "true"
    Updated = "2021-10-18"
  }
}

# https://youtu.be/V4waklkBC38?t=5091