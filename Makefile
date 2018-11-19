#!/usr/bin/env make
MAKEFLAGS += --silent
SHELL := /usr/bin/env bash

.PHONY: unit_tests
unit_tests: \
	docker run --rm \
		-v "$(PWD):/work" \
		-w "/work" \
		graze/bats /work/tests
