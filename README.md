# Kubernetes configuration for EKS
Hold kubernetes configurations and deployments for EKS cluster created by the [terraform-eks](https://github.com/amit242/terraform-eks) project

## Prerequisites
### 1. Tiller
To install
```bash
cd tiller
./install.sh
```
## Others
### kubernetes dashboard
To install
```bash
cd kubernetes-dashboard
./install.sh
```
run 
```bash
kubectl proxy
``` 
to access dashboard at
http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/login

token to access the dashboard can be obtained by
```bash
./get_dashboard_token.sh
cat dashboard-token.secret
```

### Ingress controller: traefik
to install
```bash
cd ingress-controller/traefik
./install.sh
```

this installs a nodeport service pointing to `port: 31742` on each worker node for the ALB to route traffic to.

### Cluster Autoscaler
install metrics server
```bash
cd metrics-server
./install.sh
cd ..
```
install cluster-autoscaler
```bash
cd luster-autoscaler
./install.sh
```