TAG=latest
NAME=kubectl
IMAGE=$(DOCKER_IMG_SUFFIX)/$(NAME)

help:
	@echo "Usage:"
	@echo "    make - Display this help"
	@echo "    make all - Build, Tag and Push your countainer to your registery"
	@echo "    make build - Build your countainer"
	@echo "    make tag - Tag your countainer (to: latest)"
	@echo "    make push - Push your countainer to the registery"
	@echo "    make clean - Clean the local build image"
	@echo "    make login - Log the the docker to docker hub"

all: build tag push clean

build:
	docker build -t $(IMAGE) .

tag:
	docker tag $(IMAGE):$(TAG) $(IMAGE):$(TAG)

push:
	docker push $(IMAGE):$(TAG)

clean:
	docker rmi $(IMAGE)

login:
	docker login

install:
	@echo ">> Installing $(NAME)"
	@mkdir -p $(HOME)/bin
	@cp $(PWD)/bin/$(NAME) $(HOME)/bin
