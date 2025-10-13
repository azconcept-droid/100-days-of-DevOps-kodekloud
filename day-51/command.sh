alias k=kubectl
k config
k config view
k describe deploy nginx-deployment
k set image deploy/nginx-deployment nginx-container=nginx:1.17
kubectl rollout status deployment/nginx-deployment
kubectl get pods -o wide
k describe deploy nginx-deployment
k get pod