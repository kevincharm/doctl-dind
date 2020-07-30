IMAGE=kevincharm/doctl-dind
TAG=latest
DOCTL_VERSION=1.46.0

build:
	docker build . -t $(IMAGE):$(TAG) --build-arg DOCTL_VERSION=$(DOCTL_VERSION)

push:
	docker push $(IMAGE):$(TAG)
