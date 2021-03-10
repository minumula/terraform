terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}


resource "aws_instance" "example" {
  ami           = "amzn2-ami-hvm-2.0.20210219.0-x86_64-gp2"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
