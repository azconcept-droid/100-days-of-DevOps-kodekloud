kubectl create deployment grafana-deployment-xfusion --image=grafana/grafana-enterprise --replicas=3

kubectl expose deployment grafana-deployment-xfusion \
  --name=grafana-service \
  --type=NodePort \
  --port=3000 \
  --target-port=3000 \
  --node-port=32000

kubectl get deployments
kubectl get pods
kubectl get svc

curl http://<NodeIP>:32000

