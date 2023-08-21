terraform {
  backend "s3" {
    bucket = "devops-bucket-metabase"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
