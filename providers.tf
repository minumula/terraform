provider "aws" {
    alias = "aws.virginia"
    region = "us-east-1"
    version = "~> 3.31"
}

resource "aws_s3_bucket" "us-east-bucket" {
    provider = "aws.aws.virginia"
    bucket = "mybucket90210"
      
}