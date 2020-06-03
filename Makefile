LDFLAGS	+= -s -w
REPO    ?= karolisr

install:
	GOOS=linux CGO_ENABLED=0 go install -ldflags="$(LDFLAGS)" github.com/litesoft-go/httpForwarder/cmd/httpForwarder

image:
	docker build -t docker.io/$(REPO)/http-forwarder:latest -f Dockerfile .

push: image
	docker push docker.io/$(REPO)/http-forwarder:latest