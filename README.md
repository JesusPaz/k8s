# k8s
K8s practice

commands

## Check info
```
kubectl cluster-info
kubectl get nodes
kubectl get nodes -o wide
kubectl config view
```
## Namespaces
```
kubectl apply -f ./namespaces/00-namespace-testing.yaml
kubectl get ns
```
## Services

### Node Port
```
kubectl -n testing apply -f ./services/01-wordpress-node-port.yaml
kubectl -n testing get svc
```
### Load Balancer
```
kubectl -n testing delete svc ${SVC_NAME}
kubectl -n testing apply -f ./services/03-wordpress-service-lb.yaml
kubectl -n testing get svc
```


## Replication Controller
```
kubectl -n testing apply -f ./controllers/02-wordpress-rc.yaml
kubectl -n testing get pods
kubectl -n testing delete pod ${POD_NAME}
```

## Info

NodePort: create a port in every node, you need to use the ip of the node and the port
Services: Refers to a set of pods, send traffic based in a policy (labels)

kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1

kubectl get deployments

kubectl get pods

kubectl describe pods

kubectl logs $POD_NAME

kubectl exec $POD_NAME env

kubectl exec -ti $POD_NAME bash


### Deployment 

kubectl apply -f controllers/nginx-deployment.yaml
kubectl get deployments
kubectl get pods --show-labels
kubectl scale deployment.v1.apps/nginx-deployment --replicas=10
kubectl autoscale deployment.v1.apps/nginx-deployment --min=10 --max=15 --cpu-percent=80