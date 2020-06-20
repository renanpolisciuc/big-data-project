module "k8s_cluster" {
  source  = "./k8s"
  project = "projeto-principal-278602"
  cluster_config = {
    name         = "services-cluster"
    location     = "us-central1"
    preemptible  = true
    node_count   = 1
    machine_type = "g1-small"
    tags         = ["k8s", "workloads"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}