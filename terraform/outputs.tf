output "kubeconfig_raw" {
  description = "Raw kubeconfig for the cluster"
  value       = digitalocean_kubernetes_cluster.devops.kube_config[0].raw_config
  sensitive   = true
}

output "cluster_id" {
  value = digitalocean_kubernetes_cluster.devops.id
}
