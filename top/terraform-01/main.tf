
resource "aws_instance" "ins_111" {
  ami = "ami-01e444924a2233b07"
  instance_type = "t2.micro"
  subnet_id = "subnet-002308d00bad9957e"
  tags = {
    Name = "Ins 111"
  }
}
