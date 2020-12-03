.PHONY: docs
docs:
	docsonnet main.libsonnet

.PHONY: docsonnet.install
docsonnet.install:
	go get -u github.com/sh0rez/docsonnet
