DOCKER_TAG=reverentengineer/dovecot

build:
	docker build -t $(DOCKER_TAG) .

deploy:
	docker push $(DOCKER_TAG)
