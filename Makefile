DOCUMIZE_VERSION ?= 2.1.1

build-docker-image:
	docker build -t ownport/documize:${DOCUMIZE_VERSION} .

run-documize-container:
	docker run --rm --name documize \
		-v $(shell pwd):/data \
		ownport/documize:${DOCUMIZE_VERSION}

run-documize-container-cli:
	docker run -ti --rm --name documize \
		-v $(shell pwd):/data \
		ownport/documize:${DOCUMIZE_VERSION} \
		/bin/sh

stop-documize-container:
	docker stop documize


