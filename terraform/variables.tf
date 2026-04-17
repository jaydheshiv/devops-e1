variable "region" {
  description = "DigitalOcean region"
  type        = string
  default     = "blr1"
}

variable "cluster_name" {
  description = "Kubernetes cluster name"
  type        = string
  default     = "devops-e1"
}

variable "k8s_version" {
  description = "DOKS version"
  type        = string
  default     = "1.30.2-do.0"
}

variable "node_size" {
  description = "Droplet size for node pool"
  type        = string
  default     = "s-2vcpu-4gb"
}

variable "node_count" {
  description = "Number of nodes"
  type        = number
  default     = 2
}
