k apply -f pv.yml 
k apply -f pvc.yml 
k apply -f pod.yml 
k apply -f service.yml 

k get pv
k get pvc
k get pods
k get svc
