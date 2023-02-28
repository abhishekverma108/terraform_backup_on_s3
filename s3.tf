provider "aws" {
   profile ="default"
   region="ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "bucket-for-practical-feb"
  //by this if we destroy our terraform environment our data on s3 will not be destroy 
  lifecycle {
    prevent_destroy = false
  }
  force_destroy = true

}
// versioning if we want to go back to older version
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}
