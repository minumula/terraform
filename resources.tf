provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "EG" {
    ami = "ami-"
    instance_type = "t3.medium"
    // use the same keypair as EG_data instance
    key_name = data.aws_instance.Ses_data.key_name

    tags{
        Environment="Dev"
        Application="EG"
        TechOwner = "John"
        BusinessOwner = "Jill"
    }    
}

data "aws_instance" "Ses_data" {
    instance_id = "12345"
  
}

