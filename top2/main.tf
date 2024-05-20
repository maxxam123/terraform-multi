# test test test
terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
   }
 }

 backend "s3" {
   region = "eu-central-1"
   key    = "dunhuang/terraform/s3/bucket03/terraform.tfstate"
 }
}

provider "aws" {
 region = "eu-central-1"
}

resource "aws_instance" "ins_nihao" {
  ami = "ami-01e444924a2233b07"
  instance_type = "t2.micro"
  subnet_id = "subnet-002308d00bad9957e"
  tags = {
    Name = "Ins nihao"
  }
}
