provider "aws" {
   profile ="default"
   region="ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "bucket name that you have creted using s3.tf file"
    key="terraform.tfstate"
    region = "ap-south-1"
  }

}
