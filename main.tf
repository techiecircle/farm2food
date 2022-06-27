terraform {
  required_providers {
    google = {
    source = "hashicorp/google"
    version = "3.5.0"
  }
}
}

provider "google" {
  credentials = file("credentials.json")
  
  project = "<PROJECT_ID>"
  region = "us-central1"
  zone = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
