FROM golang:1.16
ENV GO111MODULE=on

RUN mkdir -p /usr/local/simple-service
WORKDIR /usr/local/simple-service
ADD simple-service/ /usr/local/simple-service

# Build
RUN GO111MODULE=on go build

WORKDIR /usr/local/simple-service/
EXPOSE 8000

CMD ["/usr/local/simple-service/simple-service"]
