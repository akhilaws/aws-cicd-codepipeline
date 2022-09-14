terraform{
    backend "s3" {
        bucket = "aws-cicd-pipelines"
        encrypt = true
        key = "terraform.tfstate"
        region = "eu-west-2"
    }
}

provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "default"
  region                  = "eu-west-2"
}