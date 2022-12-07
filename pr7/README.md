# Старт

`minikube start --driver=virtualbox --no-vtx-check`

kubectl create namespace "evgenii-subbotin-ikbo0119"

kubectl apply -f memory-request-limit.yaml --namespace="evgenii-subbotin-ikbo0119"

kubectl get pod memory-demo --output=yaml  --namespace="evgenii-subbotin-ikbo0119"

kubectl top pod memory-demo --namespace="evgenii-subbotin-ikbo0119"

kubectl delete pod memory-demo --namespace="evgenii-subbotin-ikbo0119"

kubectl apply -f memory-request-limit-2.yaml --namespace="evgenii-subbotin-ikbo0119"

kubectl get pod memory-demo-2 --namespace="evgenii-subbotin-ikbo0119"

kubectl get pod memory-demo-2 --output=yaml --namespace="evgenii-subbotin-ikbo0119"

kubectl get pod memory-demo-2 --namespace="evgenii-subbotin-ikbo0119"

kubectl describe pod memory-demo-2 --namespace="evgenii-subbotin-ikbo0119"

kubectl delete pod memory-demo-2 --namespace="evgenii-subbotin-ikbo0119"

kubectl apply -f memory-request-limit-3.yaml --namespace="evgenii-subbotin-ikbo0119"

kubectl get pod memory-demo-3 --namespace="evgenii-subbotin-ikbo0119"

kubectl describe pod memory-demo-3 --namespace="evgenii-subbotin-ikbo0119"

kubectl delete pod memory-demo-3 --namespace="evgenii-subbotin-ikbo0119"

kubectl delete namespace "evgenii-subbotin-ikbo0119"

kubectl apply -f cpu-request-limit.yaml --namespace="evgenii-subbotin-ikbo0119"

kubectl get pod cpu-demo --namespace="evgenii-subbotin-ikbo0119"

kubectl top pod cpu-demo --namespace="evgenii-subbotin-ikbo0119"

kubectl get pod cpu-demo --output=yaml  --namespace="evgenii-subbotin-ikbo0119"

kubectl delete pod cpu-demo --namespace="evgenii-subbotin-ikbo0119"

kubectl apply -f cpu-request-limit-2.yaml --namespace="evgenii-subbotin-ikbo0119"

kubectl get pod cpu-demo-2 --namespace="evgenii-subbotin-ikbo0119"

kubectl describe pod cpu-demo-2 --namespace="evgenii-subbotin-ikbo0119"

kubectl delete pod cpu-demo-2 --namespace="evgenii-subbotin-ikbo0119"
