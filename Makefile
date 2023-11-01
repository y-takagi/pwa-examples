NPM := npm
NPX := npx

.PHONY: install
install:
	$(NPM) ci

.PHONY: start
start:
	$(NPX) ng start

.PHONY: build
build:
	$(NPX) ng build

.PHONY: check-format
check-format:
	$(NPX) prettier --check .

.PHONY: format
format:
	$(NPX) prettier --write .

.PHONY: lint
lint:
	$(NPX) ng lint
