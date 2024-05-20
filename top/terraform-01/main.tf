provider "aws" {
  region = "eu-central-1"
  access_key = ${{ secrets.ACCESS_KEY }}
  secret_key = ${{ secrets.SECRET_KEY }}
}

resource "aws_instance" "ins_1" {
  ami = "ami-01e444924a2233b07"
  instance_type = "t2.micro"
  subnet_id = "subnet-002308d00bad9957e"
  tags = {
    Name = "Ins 1"
  }
}

terraform {
  backend "s3" {
    bucket = "dunhunag-s3-bucket"
    key = "dunhunag/terraform/remote/s3/test/terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "dynamodb-state-locking"
  }
}
