### Health Checks

### Create deployments
``` 
    kubectl apply -f liveness-app.yml
    kubectl apply -f readiness-deployment.yml
``` 

### Destroy deployments
``` 
    kubectl delete -f liveness-app.yml
    kubectl delete -f readiness-deployment.yml
``` 
