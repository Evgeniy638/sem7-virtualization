## Запуск minikube
`minikube start --driver=virtualbox --no-vtx-check --cpus 3`

Логин: `docker`
Пароль: `tcuser`

## Команды из практики

Применять из любой папки:

`kubectl create configmap frontend-config --from-literal=journalEntries=10`

`kubectl create secret generic redis-passwd --from-literal=passwd=${RANDOM}`

Применять из папки redis:

`kubectl create configmap redis-config --from-file=launch.sh=launch.sh`

## Плагины

`minikube addons enable ingress`

## Запуск deployment и сервисов

Из папки выше чем pr6:

`kubectl apply -f pr6 --recursive`

## Активация тунеля

`minikube tunnel`
