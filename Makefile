version := $(shell cat version)
branch := $(shell git rev-parse --abbrev-ref HEAD)
commit := $(shell git rev-parse HEAD)

image := jmtrusona/stubby-rails

dep-check:
	./dep-check.sh

git-commit-hash:
	echo $(commit) > git-commit-hash

## latest container ##
latest-container: build-latest-container push-latest-container

build-latest-container: dep-check git-commit-hash
	docker build --build-arg VERSION=$(version) -t $(image):latest .

push-latest-container:
	docker push $(image):latest

## versioned container ##
version-container: build-version-container push-version-container

build-version-container: dep-check git-commit-hash
	docker build --build-arg VERSION=$(version) -t $(image):$(version) -t $(image):latest .

push-version-container: push-latest-container
	docker push $(image):$(version)

## commit hash container ##
commit-container: build-commit-container push-commit-container

build-commit-container: dep-check git-commit-hash
	docker build --build-arg VERSION=$(version) -t $(image):$(branch)-$(commit) -t $(image):latest .

push-commit-container: push-latest-container
	docker push $(image):$(branch)-$(commit)
