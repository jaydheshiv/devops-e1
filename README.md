# DevOps CAT-II: Event-Driven Ride Sharing (Microservices)

This repo contains two Python FastAPI microservices:
- `ride-request-service/`
- `matching-service/`

## Local run (WSL)

### Prereqs
- Docker Desktop with WSL integration enabled
- Python 3.11 (optional if you only use Docker)

### Run tests (Python)

```bash
cd ride-request-service
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements-dev.txt
pytest -v
```

### Build + run (Docker)

```bash
docker build -t ride-request-service:local ./ride-request-service
docker run --rm -p 8000:8000 ride-request-service:local
```

```bash
docker build -t matching-service:local ./matching-service
docker run --rm -p 8001:8001 matching-service:local
```

## CI (GitHub Actions)

Workflow: `.github/workflows/ci.yml`

Runs on every push/PR to `main`:
- Unit tests for both services
- `pip-audit` dependency scan
- Docker build (multi-stage) + unit tests inside Docker build
- Trivy container scan (fails on HIGH/CRITICAL)
- Optional SonarCloud scan (requires `SONAR_TOKEN`)

### SonarCloud setup
1. Create a SonarCloud organization + project
2. Add repo secret: `SONAR_TOKEN`
3. Update `sonar-project.properties` with your `sonar.organization` and `sonar.projectKey`

## Next (GitOps + K8s + Terraform)
We will add:
- `k8s-manifests/` (Deployments/Services/HPA)
- Terraform to provision a managed Kubernetes cluster
- Argo CD to sync manifests
- Prometheus + Grafana for monitoring
