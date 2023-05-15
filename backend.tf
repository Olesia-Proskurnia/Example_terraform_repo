terraform {
  backend "gcs" {
    bucket = "remote_state_bucket_name"
    prefix = "terraform/state"
    # project = ""
    # path    = ""
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.63, < 5.0"
    }
    google-beta = {
      source = "hashicorp/google-beta"
    }

  }
}
