

resource "aws_instance" "dev" {
  
  ami       = "ami-06e54d05255faf8f6"
  instance_type = "t2.micro"
  subnet_id = " subnet-086adfb29f30e035e"
  vpc_security_group_ids = ["sg-022b91e29536e2d42"]
  

 }