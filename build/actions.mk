DOCKER=/usr/bin/docker

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
	$(DOCKER) build -t $(IMAGE) .

tag:
	$(DOCKER) tag $(IMAGE):$(TAG) $(IMAGE):$(TAG)

push:
	$(DOCKER) push $(IMAGE):$(TAG)

clean:
	$(DOCKER) rmi $(IMAGE)

login:
	$(DOCKER) login

install:
	@echo ">> Installing $(NAME)"
	@mkdir -p $(HOME)/bin
	@cp $(PWD)/bin/$(NAME) $(HOME)/bin
