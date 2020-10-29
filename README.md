# docker-sandbox

A simple Dockerfile for teaching the basics of Docker.

```shell
docker build -t docker-sandbox .

docker run -e TEST=blahbloop -p 1234:8000 -it simpleexample
```
