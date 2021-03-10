resource "aws_instance" "example" {
    ami = "ami-"
    instance_type = "t2.micro"

    tags = {
      "Name" = "var.instance_Name"
    }
  
}