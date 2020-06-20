variable "project" {}

variable "cluster_config" {
  type = object({
    name         = string
    location     = string
    preemptible  = bool
    node_count   = number
    machine_type = string
    tags         = list(string)
    metadata = object({
      disable-legacy-endpoints = string
    })
  })
}