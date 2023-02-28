provider "aws" {
   profile ="default"
   region="ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "bucket-for-practical-feb"
  lifecycle {
    prevent_destroy = false
  }
  force_destroy = true

}
/*resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}*/