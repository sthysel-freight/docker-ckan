.PHONY: all build-solr push

all: build-solr build-dev

build-solr: Dockerfile-solr
	docker build -t sthysel/solr -f Dockerfile-solr .

build-dev: Dockerfile-dev
	docker build -t sthysel/ckan-dev -f Dockerfile-dev .

push:
	docker push sthysel/solr
	docker push sthysel/ckan-dev

