# Microservices
### Deploy Back end
``` 
    kubectl apply -f nodejs/deployment.yml
    kubectl apply -f nodejs/service.yml
    kubectl get deployment ecsdemo-nodejs
``` 

### Deploy Front end
``` 
    kubectl apply -f front-end/deployment.yml
    kubectl apply -f front-end/service.yml
    kubectl apply -f front-end/ingress.yml
    kubectl get deployment ecsdemo-frontend
``` 

### Deploy Crystal
``` 
    kubectl apply -f crystal/deployment.yml
    kubectl apply -f crystal/service.yml
    kubectl get deployment ecsdemo-crystal
``` 

### Scale 
``` 
    kubectl scale deployment ecsdemo-nodejs --replicas=3
    kubectl scale deployment ecsdemo-crystal --replicas=3
    kubectl scale deployment ecsdemo-frontend --replicas=3
``` 

### Delete
``` 
    kubectl delete -f nodejs/deployment.yml
    kubectl delete -f nodejs/service.yml

    kubectl delete -f front-end/deployment.yml
    kubectl delete -f front-end/service.yml
    kubectl delete -f front-end/ingress.yml

    kubectl delete -f crystal/deployment.yml
    kubectl delete -f crystal/service.yml
``` 
