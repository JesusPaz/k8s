### HELM

### Create a Chart

helm create eksdemo

### Install a Chart

helm install --debug --dry-run workshop ./eksdemo

helm install workshop ./eksdemo

### Test service

kubectl get svc,po,deploy
kubectl get svc ecsdemo-frontend -o jsonpath="{.status.loadBalancer.ingress[*].hostname}"; echo

### Destroy a Chart

helm uninstall workshop
