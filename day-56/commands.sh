kubectl create deployment nginx-deployment --image=nginx:latest --replicas=3

kubectl expose deployment nginx-deployment \
  --name=nginx-service \
  --type=NodePort \
  --port=80 \
  --target-port=80 \
  --node-port=30011

kubectl get deployment nginx-deployment -o yaml > nginx-deployment.yaml

kubectl apply -f nginx-deployment.yaml

kubectl get deployments
kubectl get pods -o wide
kubectl get svc

k get all
