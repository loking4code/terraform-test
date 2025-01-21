terraform {
  required_providers {
    cmccloudv2 = {
      source = "cmc-cloud/cmccloudv2"

    }
  }
}
provider "cmccloudv2" {
  api_endpoint = "https://apiv2.cloud.cmctelecom.vn"
  api_key      = " #Get API key from cmccloud portal 
  project_id   = "90fa57e96942453d85dc907688ee82cf"         #Get project_id from IAM on portal 
  region_id    = "hn-1"

}

