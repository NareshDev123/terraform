provider "aws" {
  region     = "ap-south-1"
}
resource "aws_instance" "server" {
  ami           = "ami-09f7fbc41963e146f"
  instance_type = "t2.micro"
  subnet_id = "subnet-08856ec71651ae342"
  security_groups = ["sg-053a4ca5e1ccb8215"]
  key_name = "sridarKPMBI"

  tags = {
    Name = "terraform-server"
  }
}