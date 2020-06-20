resource "google_container_cluster" "cluster" {
  name               = var.cluster_config.name
  location           = var.cluster_config.location
  initial_node_count = var.cluster_config.node_count
  project            = var.project

  node_config {
    preemptible  = true
    machine_type = var.cluster_config.machine_type
    metadata     = var.cluster_config.metadata
    tags         = var.cluster_config.tags
  }
}