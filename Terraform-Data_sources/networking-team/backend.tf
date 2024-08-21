terraform {
  backend "s3" {
    bucket = "networking-bucket-demo-mian"
    key    = "eip.tfstate"
    region = "eu-north-1"
  }
}
