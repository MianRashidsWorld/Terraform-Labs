data "terraform_remote_state" "vpc" {
    backend = "s3"

    config = {
        bucket = "networking-bucket-demo-mian"
        key    = "eip.tfstate"
        region = "eu-north-1"     
    }
}