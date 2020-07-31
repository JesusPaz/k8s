
## Commands to deploy dashboard

``` 
    kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0/aio/deploy/recommended.yaml --kubeconfig ~/.kube/config
    kubectl proxy --port=8080 --address=0.0.0.0 --disable-filter=true &
    kubectl apply -f cluster_role.yml
    aws eks get-token --cluster-name sf_rampup_eks_cluster | jq -r '.status.token'
```
