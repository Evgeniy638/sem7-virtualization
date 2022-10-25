# ПР5

## Запуск minikube
`minikube start --driver=virtualbox --no-vtx-check`

Логин: `docker`
Пароль: `tcuser`

## Пробрасываем докер образ в кластер
https://minikube.sigs.k8s.io/docs/handbook/pushing/#8-building-images-to-in-cluster-container-runtime

Использовал 8 способ

`minikube image build -t subbotin-e-v-ikbo-01-19-obraz .`

## Запуск приложение
Перед этим должен быть проброшен в кластер докер образ собранный ранее

`kubectl apply -f deployment.yaml`

## Создаём сервис

`kubectl expose pod <название пода> --port=8080 --target-port=8080 --name=subbotin-e-v-ikbo-01-19 --type=NodePort`

## Освобождение ресурсов

`kubectl delete service subbotin-e-v-ikbo-01-19`

`kubectl delete deployment subbotin-e-v-ikbo-01-19`

`minikube stop`

## Плагины

`minikube addons enable ingress`

`kubectl get pod,svc -n kube-system`

`minikube addons disable ingress`
 