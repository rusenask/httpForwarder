FROM golang:1.14.1
COPY . /go/src/github.com/litesoft-go/httpForwarder
WORKDIR /go/src/github.com/litesoft-go/httpForwarder

RUN GO111MODULE=off make install

FROM alpine:latest
RUN apk --no-cache add ca-certificates curl
COPY --from=0 /go/bin/httpForwarder /bin/httpForwarder
ENTRYPOINT ["/bin/httpForwarder"]

EXPOSE 8703