kubectl apply -f volume-share-datacenter.yaml

kubectl get pods

kubectl exec -it volume-share-datacenter -c volume-container-datacenter-1 -- bash

echo "This is shared data" > /tmp/media/media.txt

exit

kubectl exec -it volume-share-datacenter -c volume-container-datacenter-2 -- cat /tmp/cluster/media.txt

