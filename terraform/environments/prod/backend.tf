terraform {

  backend "s3" {

    bucket         = "cloud-observability-platform-bucket"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}