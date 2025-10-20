kubectl exec -it nginx-phpfpm -c nginx-container -- grep SCRIPT_FILENAME /etc/nginx/nginx.conf
kubectl edit configmap nginx-config

kubectl delete pod nginx-phpfpm
kubectl apply -f pod.yaml
kubectl get pods

kubectl exec -it nginx-phpfpm -c nginx-container -- grep SCRIPT_FILENAME /etc/nginx/nginx.conf

kubectl cp /home/thor/index.php nginx-phpfpm:/usr/share/nginx/html/index.php -c nginx-container
kubectl exec -it nginx-phpfpm -c php-fpm-container -- ls -l /var/www/html
kubectl exec -it nginx-phpfpm -c nginx-container -- ls -l /usr/share/nginx/html
