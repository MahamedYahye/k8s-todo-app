# k8s-todo-app

Multi-tier Todo applicatie gebouwd voor leren met Kubernetes, Azure AKS en GitOps.

## Architectuur

- **Frontend**: Nginx + HTML
- **Backend**: Python FastAPI
- **Database**: PostgreSQL (StatefulSet + PVC)
- **Secrets**: Azure Key Vault via CSI Secret Store Driver
- **GitOps**: ArgoCD
- **CI/CD**: GitHub Actions
- **Networking**: Azure CNI + Azure NetworkPolicy
- **Security**: RBAC, NetworkPolicy, TLS via cert-manager, HPA

## Stack

| Component | Technologie |
|-----------|-------------|
| Container orchestration | Azure AKS |
| Package manager | Helm |
| GitOps | ArgoCD |
| CI/CD | GitHub Actions |
| Secrets | Azure Key Vault |
| Ingress | NGINX Ingress + cert-manager |

## Lokaal starten

```bash
# Clone de repo
git clone https://github.com/MahamedYahye/k8s-todo-app

# Deploy via Helm
helm install todo-app ./helm -f helm/values.yaml
```
