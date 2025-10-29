cat /opt/blog.txt 
kubectl create secret generic blog --from-file=/opt/blog.txt
kubectl get secrets
kubectl describe secret blog
vi secret-pod.yaml
ls /opt/
k apply -f secret-pod.yaml 
k get pods
kubectl exec -it secret-xfusion -- bash
ls /opt/cluster
cat /opt/cluster/blog.txt
