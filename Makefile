build-docker-image:
	docker build -t ownport/documize:latest .

run-documize-container:
	docker run --rm --name documize \
		-v $(shell pwd):/data \
		ownport/documize:latest

run-documize-container-cli:
	docker run -ti --rm --name documize \
		-v $(shell pwd):/data \
		ownport/documize:latest \
		/bin/sh

stop-documize-container:
	docker stop documize

