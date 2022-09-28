# Задача 1

## Запуск

Билдим parent.Dockerfile

`docker build -t pr3/parent --file parent.Dockerfile .`

Билдим child.Dockerfile

`docker build -t pr3/child --file child.Dockerfile .`

Запускаем дочерний pr3/parent

`docker run -p 9000:9000 --name pr3_parent --rm pr3/parent`

Запускаем дочерний pr3/child

`docker run -p 9000:9000 -v "$(pwd)\mount:/pr3/mount" --name pr3_child -t -i --rm pr3/child`

## Просмотр лейблов

Получение id контейнера

`docker ps -aqf "name=pr3/child"`

Вывод леблов контейнера

`docker inspect <container-id>`

