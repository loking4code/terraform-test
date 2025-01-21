provider "aws" {
  region                      = "us-east-1"
  access_key                  = ""
  secret_key                  = ""
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_requesting_account_id  = true
  endpoints {
    s3 = "https://s3.hn-1.cloud.cmctelecom.vn" 
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.52.0"
    }
  }
  backend "s3" {}
}
