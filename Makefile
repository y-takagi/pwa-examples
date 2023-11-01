NPM := npm
NPX := npx

.PHONY: install
install:
	$(NPM) ci

.PHONY: start
start:
	$(NPX) ng start

.PHONY: format
format:
	$(NPX) prettier --write .

.PHONY: check-format
check-format:
	$(NPX) prettier --check .

.PHONY: lint
lint:
	$(NPX) ng lint

.PHONY: test
test:
	$(NPX) ng test

.PHONY: build
build:
	$(NPX) ng build

## CI commands

.PHONY: ci-check-format
ci-check-format: install check-format

.PHONY: ci-lint
ci-lint: install lint

.PHONY: ci-test
ci-test: install test

.PHONY: ci-build
ci-build: install build
