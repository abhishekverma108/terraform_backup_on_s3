provider "aws" {
   profile ="default"
   region="ap-south-1"
}
resource "aws_s3_bucket" "example" {
  bucket = "bucket-practical-feb"
  lifecycle {
    prevent_destroy = true
  }

}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}
terraform {
  backend "s3" {
    bucket = aws_s3_bucket.example.id
    key="terraform.tfstate"
    region = "ap-south-1"
  }

}