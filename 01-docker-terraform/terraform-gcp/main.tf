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
  credentials = var.credentials
  project     = var.project_id
  region      = var.location
}

resource "google_storage_bucket" "zoomcamp-bucket" {
  name          = "vee-zoomcamp-bucket"
  location      = var.location
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


resource "google_bigquery_dataset" "zoomcamp_dataset" {
  dataset_id = var.bq_dataset_id
  location   = var.location
}
