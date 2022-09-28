FROM pr3/parent

WORKDIR /pr3

ENTRYPOINT ./copy.sh && python3 -m http.server --bind 0.0.0.0 9000

EXPOSE 9000
