provider "aws" {
  region     = "ap-south-1"
}
provider "aws" {
    alias = "east"
    region = "us-east-1"
}
resource "aws_instance" "server" {
    ami = "ami-09f7fbc41963e146f"
    instance_type = "t2.micro"
    tags = {
        Name = "mumbai-server"
    }
}
resource "aws_instance" "nv-server" {
    ami = "ami-0fa1de1d60de6a97e"
    instance_type = "t2.micro"
    provider = aws.east
    tags = {
        Name = "virginia-server"
    }
}

