# Makefile for building Chaos charts
# Reference Guide - https://www.gnu.org/software/make/manual/make.html

.PHONY: deps
deps:
	@echo "-----Installing dependencies-----"
	sudo apt update
	sudo apt-get install python-pip
	pip install packaging

.PHONY: versionmaker
versionmaker:
	@echo "-----version maker-----"
	bash ./scripts/version_maker.sh

.PHONY: push
push:
	@echo "---------git push to master-------"
	bash ./scripts/push.sh