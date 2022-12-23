terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.3.0"
    }
  }

  required_version = "~> 1.0"
}

resource "google_compute_network" "vpc" {
  name = "meilisearch-network"
  project = var.project_id
  
}

resource "google_compute_subnetwork" "subnet" {
  name = "meilisearch-subnet"
  project = var.project_id
  ip_cidr_range = "10.0.11.0/24"
  network = google_compute_network.vpc.id
}

resource "google_container_cluster" "meiilisearch" {
  name = "${var.project_id}-meilisearch"
  project = var.project_id
  location = var.region
  initial_node_count = 1
  network = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name

  enable_autopilot = true
}
