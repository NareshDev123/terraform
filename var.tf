variable "region" {
 type = string
 default = "ap-south-1"   
}

variable "ami" {
    type = string
    default = "ami-09f7fbc41963e146f"
}
variable "instance_type" {
    type = string
    default = "t2.micro"
}
variable "subnet" {
    type = list
    default = ["subnet-08856ec71651ae342","subnet-08a4ddf3165063ea2"]
}

