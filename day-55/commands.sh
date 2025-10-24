kubectl apply -f webserver.yaml

kubectl get pods

kubectl logs webserver -c sidecar-container
