terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  # Configuration option
  credentials = "./keys/gcp-creds.json"
  project     = "feisty-deck-445217-m6"
  region      = "us-central1"
}

resource "google_storage_bucket" "zoomcamp-bucket" {
  name          = "vee-zoomcamp-bucket"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3 # in days 
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
