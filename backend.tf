terraform {
  backend "s3" {
    bucket = "neonlight11"
    key    = "gems"
    region = "us-east-1"
    dynamodb_table = "backend"
  }
}