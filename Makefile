all: build

.PHONY: build
build:
	./build.sh

.PHONY: rebuild
rebuild:
	BUILD_OPTION="--no-cache" ./build.sh

.PHONY: push
push:
	./push.sh
