# Terraform (DigitalOcean Kubernetes)

## Prereqs
- DigitalOcean account + API token
- Terraform installed in WSL

## Quick start (WSL)

```bash
cd ~/devops/devops-e1/terraform
export DIGITALOCEAN_TOKEN="<your_token>"

terraform init
terraform plan
terraform apply
```

## Get kubeconfig

```bash
terraform output -raw kubeconfig_raw > kubeconfig.yaml
export KUBECONFIG="$PWD/kubeconfig.yaml"

kubectl get nodes
```

## Destroy

```bash
terraform destroy
```
