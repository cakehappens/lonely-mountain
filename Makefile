.PHONY: test
test:
	jsonnet test.jsonnet

.PHONY: docs
docs:
	docsonnet main.libsonnet

docsonnet.install:
	go get -u github.com/sh0rez/docsonnet
