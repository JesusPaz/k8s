### Deploy Back end

kubectl apply -f nodejs/deployment.yml
kubectl apply -f nodejs/service.yml

kubectl get deployment ecsdemo-nodejs

### Deploy Front end

kubectl apply -f front-end/deployment.yml
kubectl apply -f front-end/service.yml

kubectl get deployment ecsdemo-frontend

### Deploy Crystal

kubectl apply -f crystal/deployment.yml
kubectl apply -f crystal/service.yml

kubectl get deployment ecsdemo-crystal
