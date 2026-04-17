# Terraform (Local Kind)

This uses a local Kubernetes cluster (kind) and Terraform to install Argo CD and Prometheus/Grafana.

## Prereqs (WSL)
- Docker Desktop with WSL integration OR Docker Engine in WSL
- kind, kubectl, helm, terraform

## Create kind cluster

```bash
kind create cluster --name devops-e1
```

## Apply Terraform

```bash
cd ~/devops/devops-e1/terraform-local
terraform init
terraform apply
```

## Verify

```bash
kubectl get nodes
kubectl get pods -n argocd
kubectl get pods -n monitoring
```
