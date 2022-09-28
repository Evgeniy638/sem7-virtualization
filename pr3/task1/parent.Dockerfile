FROM ubuntu:latest

USER root

RUN apt-get -y update && \
  apt-get install -y python3 && \
  mkdir pr3

VOLUME /pr3/mount

ONBUILD ADD https://zoomagazin.dp.ua/image/catalog/blog-img/koshka-murchit.jpg /pr3/koshka-murchit.jpg

COPY ./script.sh /pr3/script.sh

ONBUILD COPY ./copy.sh /pr3/copy.sh

LABEL group="ИКБО-01-19"

ENV SECRET_KEY 12345

CMD /pr3/script.sh
