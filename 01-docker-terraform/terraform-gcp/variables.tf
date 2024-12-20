variable "location" {
  description = "Location for all GCP Services"
  default     = "asia-southeast1"
}

variable "bq_dataset_id" {
  default = "vee_zoomcamp_dataset"
}

variable "project_id" {
  default = "feisty-deck-445217-m6"
}

variable "credentials" {
  description = "My credentials for GCP Service Account"
  default     = "./keys/gcp-creds.json"
}
