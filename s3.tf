provider "aws" {
  region     = "ap-south-1"
}
resource "aws_s3_bucket" "bucket1" {
  bucket = "nar3sh01"

  tags = {
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_object" "object" {
  bucket = "nar3sh01"
  key    = "Screenshot 2023-03-21 091228"
  source = "C:\\Users\\Naresh\\OneDrive\\Pictures\\Screenshots\\Screenshot 2023-03-21 091228.png"
}