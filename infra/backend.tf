terraform {
  backend "s3" {
    bucket = "clam-bucket42"
    key    = "githubactions1/terraform.tfstate"
    region = "us-east-2"
  }
}