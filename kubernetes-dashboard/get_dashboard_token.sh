kubectl -n kube-system get secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}') -o json | jq -r '.data.token' | base64 --decode > dashboard-token.secret