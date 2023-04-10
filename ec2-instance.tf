provider "aws" {
  region     = var.region
}
resource "aws_instance" "server" {
  count = 2
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = "${element(var.subnet,count.index)}"
  key_name = "sridarKPMBI"

  tags = {
    Name = "terraform-${count.index+1}"
  }
}