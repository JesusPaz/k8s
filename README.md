# k8s
K8s practice

# Kubectl Commands

## Check info
```
kubectl get all
kubectl cluster-info
kubectl get nodes
kubectl get nodes -o wide
kubectl get pods --all-namespaces  
kubectl config view
kubectl get pods --show-labels
kubectl describe pods
kubectl logs ${POD_NAME}
kubectl delete all --all -n ${namespace}
kubectl exec -it ${podname} sh
```
## Namespaces
```
kubectl apply -f ./namespaces/00-namespace-testing.yaml
kubectl get ns
```
## Services

### Node Port
```
kubectl -n testing apply -f ./services/01-wordpress-service-np.yaml
kubectl -n testing get svc
```
### Load Balancer
```
kubectl -n testing delete svc ${SVC_NAME}
kubectl -n testing apply -f ./services/03-wordpress-service-lb.yaml
kubectl -n testing apply -f ./services/05-hello-app-service-lb.yaml
kubectl -n testing get svc
```


## Controllers

### Replication Controller
```
kubectl -n testing apply -f ./controllers/02-wordpress-rc.yaml
kubectl -n testing get pods
kubectl -n testing delete pod ${POD_NAME}
```

### Deployments
```
kubectl -n testing get deployments
kubectl -n testing get rs
kubectl -n testing apply -f ./controllers/04-hello-app-deployment.yaml
kubectl -n testing get pods
kubectl -n testing describe deployment deployment.v1.apps/hello-deployment
kubectl -n testing scale --replicas=5 deployment.v1.apps/hello-deployment
kubectl -n testing delete pod ${POD_NAME}
kubectl -n testing autoscale deployment.v2.apps/hello-deployment --min=2 --max=5 --cpu-percent=80
```



## Info

 * NodePort: create a port in every node, you need to use the ip of the node and the port
 * Services: Refers to a set of pods, send traffic based in a policy (labels)
