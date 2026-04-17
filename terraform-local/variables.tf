variable "kubeconfig_path" {
  description = "Path to kubeconfig (kind)"
  type        = string
  default     = "~/.kube/config"
}

variable "kube_context" {
  description = "Kubeconfig context name"
  type        = string
  default     = "kind-devops-e1"
}
