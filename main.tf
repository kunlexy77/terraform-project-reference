#configure aws provider
provider "aws" {
  region = "us-east-1"
  profile = "newterraform"
}

#stores the terraform statefile in s3
terraform {
  backend "s3" {
    bucket = "kunlexy77-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "newterraform"
  }
}
