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
