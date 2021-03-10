variable "region" {
  default = "us-east-1"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleInstance"
}

variable "bucket_name" {
  default     = "random-bucket-name-inputfiles"
  description = "Bucket for incoming files"
}

resource "aws_s3_bucket" "s3_bucket_variable" {
  bucket = "${var.bucket_name}-aaa"
  
}