kubectl run pod-nginx \
  --image=nginx:latest \
  --restart=Never \
  --labels="app=nginx_app" \
  --port=80 \
  --dry-run=client -o yaml > pod-nginx.yaml

kubectl apply -f pod-nginx.yaml
kubectl get pods
kubectl describe pod pod-nginx
