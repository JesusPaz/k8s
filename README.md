# k8s
K8s practice

commands

minikube start

kubectl cluster-info

kubectl get nodes

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