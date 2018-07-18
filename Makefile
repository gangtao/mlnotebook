BIN_NAME ?= conda
VERSION ?= 0.3
IMAGE_NAME ?= $(BIN_NAME):$(VERSION)
DOCKER_ID_USER ?= naughtytao

FULLNAME=$(DOCKER_ID_USER)/${BIN_NAME}:${VERSION}

docker: Dockerfile
	docker build --no-cache -t $(IMAGE_NAME) .

push:
	docker tag $(IMAGE_NAME) ${FULLNAME}
	docker tag $(IMAGE_NAME) $(DOCKER_ID_USER)/${BIN_NAME}:latest
	docker push ${FULLNAME}
	docker push $(DOCKER_ID_USER)/${BIN_NAME}:latest