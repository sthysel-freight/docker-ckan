.PHONY: all build-solr push

all: build-solr

build-solr: Dockerfile-solr
	docker build -t sthysel/solr -f Dockerfile-solr .

push:
	docker push sthysel/solr

